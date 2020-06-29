### png 图片压缩脚本

压缩的主要工具来源于 https://pngquant.org/ 

为了方便 drawable 下的 png 图片批量压缩，故在 pngquant 上面做了一层批处理，只需要提供文件夹路径即可对该文件夹下面的所有 png 实现批量压缩


### 使用

命令如下：
> ./compress.sh 文件夹路径

eg：
> ./compress.sh /Users/codelang/Desktop/drawable-xhdpi


### 比较

原始文件：original.png ，大小 2.9M ，原始文件效果如下
![original.png](image/original.png)

压缩后文件：compress.png ，大小 900k，压缩后效果如下
![original.png](image/compress.png)