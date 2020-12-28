文件夹elasticsearch-6.2.2未完整的elasticsearch部署文件
部署步骤：
1 在linux服务器创建用户组     命令：groupadd -g 888 es
2 在linux服务器创建用户        命令：useradd -g es es
3 将文件elasticsearch-6.2.2上传至服务器
4 更改elasticsearch-6.2.2所有者权限--->es     命令：chown -R es:es elasticsearch-6.2.2
5 切换到es用户  命令：su es
6 编辑elasticsearch-6.2.2\config\elasticsearch.yml
    cluster.name: idoc-es  集群名
    node.name: es-01   节点名
    path.data: /opt/es/elasticsearch-6.2.2/path/to/data   数据存储路径
    path.logs: /opt/es/elasticsearch-6.2.2/path/to/logs    日志存储路径 
    network.host: 10.169.146.18   绑定当前服务器ip
    discovery.zen.ping.unicast.hosts: ["10.169.146.18:9300", "10.169.146.19:9300", "10.169.146.20:9300"]    集群ip
7 elasticsearch-6.2.2\bin\elasticsearch为启动文件（es用户启动） 命令ll查看elasticsearch操作权限若无可执行权限  命令：chmod 777 elasticsearch
8 ./elasticsearch -d 后台运行es
9 查看日志命令：tail -f -n 200 /opt/es/elasticsearch-6.2.2/path/to/logs/idoc-es.log