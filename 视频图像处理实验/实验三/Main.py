import matplotlib.pyplot as plt
import Matplotlib.视频大数据.EndSsim as ES
import numpy as np
import cv2

strs = [256, 384, 512, 896, 1024]
ssim = [0, 0, 0, 0, 0]
num = 0
piclist2 = ES.yuv2bgr(filename="D:\\学习笔记\\视频大数据\\高宇科-实验三\\20201116实验-1\\ENH-MC-EZBC\\bin\\BUS.yuv", height=288, width=352, startfrm=0)
print(len(piclist2))
for j in strs:
    path = "D:\\学习笔记\\视频大数据\\高宇科-实验三\\20201116实验-1\\ENH-MC-EZBC\\bin\\rec_BUS_"+str(j)+".yuv"
    piclist1 = ES.yuv2bgr(filename=path, height=288, width=352, startfrm=0)
    print(len(piclist1))

    for i in range(len(piclist1)):
        im1 = piclist1[i]
        im1 = cv2.cvtColor(im1, cv2.COLOR_BGR2GRAY)
        im2 = piclist2[i]
        im2 = cv2.cvtColor(im2, cv2.COLOR_BGR2GRAY)
        ssim[num] = ssim[num] + ES.compute_ssim(np.array(im1), np.array(im2))

    ssim[num] = ssim[num]/(i+1)
    num = num+1
print(ssim)

x = [int(x) for x in strs]
y = [float(x) for x in ssim]

plt.xlabel('R')
plt.ylabel('SSIM')
plt.scatter(x, y, color='red')
plt.show()
