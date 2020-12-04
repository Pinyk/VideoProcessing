import numpy as np
from PIL import Image
from scipy.signal import convolve2d
import cv2

def matlab_style_gauss2D(shape=(3, 3), sigma=0.5):
  m, n = [(ss - 1.) / 2. for ss in shape]
  y, x = np.ogrid[-m:m + 1, -n:n + 1]
  h = np.exp(-(x * x + y * y) / (2. * sigma * sigma))
  h[h < np.finfo(h.dtype).eps * h.max()] = 0
  sumh = h.sum()
  if sumh != 0:
        h /= sumh
  return h


def filter2(x, kernel, mode='same'):
      return convolve2d(x, np.rot90(kernel, 2), mode=mode)


def compute_ssim(im1, im2, k1=0.01, k2=0.03, win_size=11, L=255):

  if not im1.shape == im2.shape:
        raise ValueError("Input Imagees must have the same dimensions")
  if len(im1.shape) > 2:
        raise ValueError("Please input the images with 1 channel")

  M, N = im1.shape
  C1 = (k1 * L) ** 2
  C2 = (k2 * L) ** 2
  window = matlab_style_gauss2D(shape=(win_size, win_size), sigma=1.5)
  window = window / np.sum(np.sum(window))

  if im1.dtype == np.uint8:
        im1 = np.double(im1)
  if im2.dtype == np.uint8:
        im2 = np.double(im2)

  mu1 = filter2(im1, window, 'valid')
  mu2 = filter2(im2, window, 'valid')
  mu1_sq = mu1 * mu1
  mu2_sq = mu2 * mu2
  mu1_mu2 = mu1 * mu2
  sigma1_sq = filter2(im1 * im1, window, 'valid') - mu1_sq
  sigma2_sq = filter2(im2 * im2, window, 'valid') - mu2_sq
  sigmal2 = filter2(im1 * im2, window, 'valid') - mu1_mu2

  ssim_map = ((2 * mu1_mu2 + C1) * (2 * sigmal2 + C2)) / ((mu1_sq + mu2_sq + C1) * (sigma1_sq + sigma2_sq + C2))

  return np.mean(np.mean(ssim_map))


def yuv2bgr(filename, height, width, startfrm):
    """
    :param filename: 待处理 YUV 视频的名字
    :param height: YUV 视频中图像的高
    :param width: YUV 视频中图像的宽
    :param startfrm: 起始帧
    :return: None
    """
    piclist = []
    fp = open(filename, 'rb')

    framesize = height * width * 3 // 2  # 一帧图像所含的像素个数
    h_h = height // 2
    h_w = width // 2

    fp.seek(0, 2)  # 设置文件指针到文件流的尾部
    ps = fp.tell()  # 当前文件指针位置
    numfrm = ps // framesize  # 计算输出帧数
    fp.seek(framesize * startfrm, 0)

    for i in range(numfrm - startfrm):
        Yt = np.zeros(shape=(height, width), dtype='uint8', order='C')
        Ut = np.zeros(shape=(h_h, h_w), dtype='uint8', order='C')
        Vt = np.zeros(shape=(h_h, h_w), dtype='uint8', order='C')

        for m in range(height):
            for n in range(width):
                Yt[m, n] = ord(fp.read(1))
        for m in range(h_h):
            for n in range(h_w):
                Ut[m, n] = ord(fp.read(1))
        for m in range(h_h):
            for n in range(h_w):
                Vt[m, n] = ord(fp.read(1))

        img = np.concatenate((Yt.reshape(-1), Ut.reshape(-1), Vt.reshape(-1)))
        img = img.reshape((height * 3 // 2, width)).astype('uint8')

        bgr_img = cv2.cvtColor(img, cv2.COLOR_YUV2BGR_NV12)
        piclist.append(bgr_img)

    fp.close()
    print("job done!")
    return piclist

