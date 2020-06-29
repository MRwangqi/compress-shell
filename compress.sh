# 使用 ./compress.sh 文件夹路径，eg: ./compress.sh /Users/codelang/Desktop/drawable-xhdpi


path=$1
# 授予文件夹下的所有文件读写权限
chmod -R 777 $path
# 列出 path 下的所有文件
files=$(ls $path)

# 如果文件夹中有 -wq 后缀的 png 图片，可以打开该注释，删除 -wq 文件
# for file in $files
# do
#     # 判断 file 文件的拓展名是否是 png
#     if [[ ${file##*.} == "png" ]];then     
#         # 获取文件名
#         fileName=${file%.*}
#         # 获取文件的绝对路径
#         filePath="$path/$file"
#         # 判断该文件是否已生成过压缩文件，如果有的话，则删除
#         wq="$path/$fileName-wq.png"
#         if [ -f "$wq" ];then
#             rm $wq
#         fi
#     fi
# done

for file in $files
do
    # 判断 file 文件的拓展名是否是 png
    if [[ ${file##*.} == "png" ]];then     
        # 获取文件名
        fileName=${file%.*}
        # 获取文件的绝对路径
        filePath="$path/$file"
        # 开始压缩
        ./pngquant --quality=65-80 --ext=-wq.png $filePath
        # 获取压缩后的文件
        wq="$path/$fileName-wq.png"
        # 将压缩后的文件重命名为原文件
        mv $wq $filePath
    fi
done
