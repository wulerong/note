1����װgcc(fdfsԴ����뻷��)
   yum install -y gcc gcc-c++
2��libevent(���л���)
   yum -y install libevent
3����װlibfastcommon�ϴ���ѹ�� /usr/local ����ѹ·���������ã�
   tar -zxvf libfastcommonV1.0.7.tar.gz -c /usr/local 
   cd /usr/local/libfastcommon-1.0.7
   ./make.sh
   ./make.sh install
   ��װ��ɺ������ /usr/lib64/libfastcommon.so
   cd /usr/lib64/
   cp libfastcommon.so /usr/lib

4����װtracker
   �ϴ�fastdfs-5.05.tar.gz��ѹ�� /usr/local
   tar -zxvf fastdfs-5.05.tar.gz -c /usr/local
   cd /usr/local/FastDFS/
   .make.sh && ./make.sh install

   ����fdfs tracker�����ļ�
   cp /usr/local/FastDFS/conf/* /etc/fdfs/

5�����ú�����tracker
   cd /etc/fdfs/
   cp tracker.conf.sample tracker.conf
   vi tracker.conf
   ����base_path=/home/yuqing/fastdfs ---> base_path=/home/fastdfs  (·���������ã�
   mkdir /home/fastdfs
   /usr/bin/fdfs_trackerd /etc/fdfs/tracker.conf restart

6�����ú�����storage
   cd /etc/fdfs/
   cp storage.conf.sample storage.conf
   vi storage.conf
   ����
   group_name=group1
   base_path=/home/yuqing/fastdfs ---> base_path=/home/fastdfs  (·���������ã�
   store_path0=/home/yuqing/fastdfs ---> store_path0=/home/fdfs_storage
   ����tracker������ip(�����ö��)
   tracker_server=xxx.xxx.xxx.xx:xxx
   tracker_server=xxx.xxx.xxx.xx:xxx
   tracker_server=xxx.xxx.xxx.xx:xxx
   mkdir /home/fdfs_storage
   /usr/bin/fdfs_storaged /etc/fdfs/storage.conf restart


7��/etc/fdfs/
   cp client.conf.sample client.conf
   vi client.conf
   ����base_path=/home/fastdfs
   tracker_server=xxx.xxx.xxx.xx:xxxx
   tracker_server=xxx.xxx.xxx.xx:xxxx
   tracker_server=xxx.xxx.xxx.xx:xxxx

   �����ϴ�fdfs_test /etc/fdfs/client.conf upload /idoc/tmp/ss.zip  �����ϴ�·�����ɹ�

8����װnginx-module(��װ�󣬿�������վͨ��http����ֱ������)
   �ϴ���/usr/local fastdfs-nginx-module-1.21.tar.gz����ѹ
   cd /usr/local/fastdfs-nginx-module/src
   vi config �ļ�  ���ļ��е�/usr/local/ --->/usr/
   cp mod_fastdfs.conf /etc/fdfs
   cd /etc/fdfs 
   vi /etc/fdfs/mod_fastdfs.conf   
   �޸�base_path=/tmp ---->base_path=/home/fastdfs
   tracker_server=xxx.xxx.xxx.xx:xxxx
   tracker_server=xxx.xxx.xxx.xx:xxxx
   tracker_server=xxx.xxx.xxx.xx:xxxx
   url_have_group_name=true
   store_path0=/home/fdfs_storage    ��storage�Ĵ洢·����
   cp /usr/lib64/libfdfsclient.so /usr/lib/
   mkdir -p /var/temp/nginx/client

9����װnginx
   �ϴ�/usr/local nginx-1.8.0.tar.gz����ѹ
   ��װ������
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
   vi nginx.conf  1.server_name ָ������ip 2.location /group1/M00/: store_path0=/home/fdfs_storage

   cd /usr/local/nginx/sbin
   ./nginx

������������ķ���Ϊ��������




