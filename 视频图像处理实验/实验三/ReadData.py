import linecache
import matplotlib.pyplot as plt

str = ['256','384','512','896','1024']
ysnr = []

for i in range(5):
    text = linecache.getline('D:\\学习笔记\\视频大数据\\高宇科-实验三\\20201116实验-1\\ENH-MC-EZBC\\bin\\FOOTBALL_' + str[i] + '.txt', 113)
    data = text.split()
    ysnr.append(data[3])
    print(data[3])

x = [int(x) for x in str]
y = [float(x) for x in ysnr]

plt.xlabel('R')
plt.ylabel('PSNR')
plt.scatter(x,y,color='red')
plt.show()

print(x)
print(y)