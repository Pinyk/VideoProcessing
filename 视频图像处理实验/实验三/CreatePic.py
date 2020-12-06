import matplotlib.pyplot as plt
import numpy as np

strs = [256, 384, 512, 896, 1024]
str1 = [512,896,1024,2048,3096]
# ssim = [0.7190626054768536, 0.8139344574281041, 0.8597913770706855, 0.9208153135634672, 0.9342068450687283]
# ssim = [0.6481917366775563, 0.7420129744495586, 0.7850220959041819, 0.8662566853555329, 0.8878535049912263]
# ssim = [0.9739815648799469, 0.9843057665906141, 0.9863532261991542, 0.990422550592523, 0.9911914591446158]
# ssim = [0.7743468683507851, 0.828919118097163, 0.862051684783086, 0.9186963748169348, 0.9282193723775295]
# ssim = [0.7953509621567878, 0.8525469065430439, 0.8857426251819787, 0.9276995256394424, 0.9378370719113076]
#FOREMAN
psnr1 = [34.39,36.09,37.29,39.63,40.19]
psnr2 = [34.55,36.37,37.64,39.84,40.36]

#BUS
psnr3 = [27.8,29.53,30.75,33.5,34.17]
psnr4 = [27.99,29.83,31.18,33.82,34.57]

#CREW
psnr5 = [28.67 ,30.73, 32.01, 34.15, 34.64]
psnr6 = [29.02, 31.03, 32.08, 34.06, 34.59]
# s1 = [0.018,0.013,0.023,0.014,0.013]
# s2 = [0.025,0.029,0.022,0.015,0.011]
# s3 = [0.020,0.020,0.014,0.009,0.007]
# s1 = [0.102 ,0.055, 0.047, 0.012, 0.018]
# s2 = [0.516 ,0.458, 0.535, 0.263, 0.292]
x = [int(x) for x in strs]
y1 = [float(x) for x in psnr1]
y2 = [float(x) for x in psnr2]
# y3 = [float(x) for x in s3]




# for a,b in zip(x,y):
#     plt.text(a, b+0.0003, '%d,%.02f' %(a,b), ha='center', va= 'bottom',fontsize=8,color='red')
# plt.scatter(x, y)

plt.figure(num=3,figsize=(8,5))
l1, = plt.plot(x,y1)
l2, = plt.plot(x,y2,color='red',linewidth=1,linestyle='--')
# l3, = plt.plot(x,y3,color='green',linewidth=1,linestyle='--')
# plt.legend(handles=[l1,l2,l3],labels=['BUS','FOREMAN','CREW'],loc='best')
plt.legend(handles=[l1,l2],labels=['baseline','main'],loc='best')
plt.title("FOREMAN-B-P")
plt.xlabel('R')
plt.ylabel('PSNR')
plt.show()