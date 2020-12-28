1，安装gcc(fdfs源码编译环境)
   yum install -y gcc gcc-c++
2，libevent(运行环境)
   yum -y install libevent
3，安装libfastcommon上传解压至 /usr/local （解压路径自行斟酌）
   tar -zxvf libfastcommonV1.0.7.tar.gz -c /usr/local 
   cd /usr/local/libfastcommon-1.0.7
   ./make.sh
   ./make.sh install
   安装完成后会生成 /usr/lib64/libfastcommon.so
   cd /usr/lib64/
   cp libfastcommon.so /usr/lib

4，安装tracker
   上传fastdfs-5.05.tar.gz解压至 /usr/local
   tar -zxvf fastdfs-5.05.tar.gz -c /usr/local
   cd /usr/local/FastDFS/
   .make.sh && ./make.sh install

   更改fdfs tracker配置文件
   cp /usr/local/FastDFS/conf/* /etc/fdfs/

5，配置和启动tracker
   cd /etc/fdfs/
   cp tracker.conf.sample tracker.conf
   vi tracker.conf
   更改base_path=/home/yuqing/fastdfs ---> base_path=/home/fastdfs  (路径自行斟酌）
   mkdir /home/fastdfs
   /usr/bin/fdfs_trackerd /etc/fdfs/tracker.conf restart

6，配置和启动storage
   cd /etc/fdfs/
   cp storage.conf.sample storage.conf
   vi storage.conf
   更改
   group_name=group1
   base_path=/home/yuqing/fastdfs ---> base_path=/home/fastdfs  (路径自行斟酌）
   store_path0=/home/yuqing/fastdfs ---> store_path0=/home/fdfs_storage
   配置tracker服务器ip(可配置多个)
   tracker_server=xxx.xxx.xxx.xx:xxx
   tracker_server=xxx.xxx.xxx.xx:xxx
   tracker_server=xxx.xxx.xxx.xx:xxx
   mkdir /home/fdfs_storage
   /usr/bin/fdfs_storaged /etc/fdfs/storage.conf restart


7，/etc/fdfs/
   cp client.conf.sample client.conf
   vi client.conf
   更改base_path=/home/fastdfs
   tracker_server=xxx.xxx.xxx.xx:xxxx
   tracker_server=xxx.xxx.xxx.xx:xxxx
   tracker_server=xxx.xxx.xxx.xx:xxxx

   测试上传fdfs_test /etc/fdfs/client.conf upload /idoc/tmp/ss.zip  返回上传路径即成功

8，安装nginx-module(安装后，可以在网站通过http请求直接下载)
   上传到/usr/local fastdfs-nginx-module-1.21.tar.gz并解压
   cd /usr/local/fastdfs-nginx-module/src
   vi config 文件  将文件中的/usr/local/ --->/usr/
   cp mod_fastdfs.conf /etc/fdfs
   cd /etc/fdfs 
   vi /etc/fdfs/mod_fastdfs.conf   
   修改base_path=/tmp ---->base_path=/home/fastdfs
   tracker_server=xxx.xxx.xxx.xx:xxxx
   tracker_server=xxx.xxx.xxx.xx:xxxx
   tracker_server=xxx.xxx.xxx.xx:xxxx
   url_have_group_name=true
   store_path0=/home/fdfs_storage    （storage的存储路径）
   cp /usr/lib64/libfdfsclient.so /usr/lib/
   mkdir -p /var/temp/nginx/client

9，安装nginx
   上传/usr/local nginx-1.8.0.tar.gz并解压
   安装依赖库
   yum install pcre
   yum install pcre-devel
   yum install zlib
   yum install zlib-devel
   yum install openssl
   yum install openssl-devel
   cd /usr/local/nginx-1.8.0
   ./configure
   make && make install
   cd /usr/local/FastDFS/conf
   cp http.conf mime.types /etc/fdfs/
   mkdir /usr/local/nginx/logs
   cd /usr/local/nginx/conf/
   vi nginx.conf  1.server_name 指定本机ip 2.location /group1/M00/: store_path0=/home/fdfs_storage

   cd /usr/local/nginx/sbin
   ./nginx

可以设置上面的服务为开机自启




