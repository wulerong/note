//查看防火墙状态
firewall-cmd --state
//启动防火墙
systemctl start firewalld.service
//设置防火墙开机自启
systemctl enable firewalld.service
//重启防火墙
systemctl restart firewalld.service
//开80端口
firewall-cmd --zone=public --add-port=80/tcp --permanent
//查看已经开放的端口
firewall-cmd --list-ports

开完端口要重启防火墙才会生效