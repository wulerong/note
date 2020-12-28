mongodb文件夹问mongo部署文件，可直接上传至服务器
部署步骤
1 编辑mongodb\mongodb-linux-x86_64-4.0.18\mongodb.conf
      dbpath = /opt/mongodb/data/lib #数据文件存放目录
      logpath = /opt/mongodb/log/db.log #日志文件存放目录
      port = 27017  #端口
      auth=false

2 启动mongo服务   命令：cd mongodb/mongodb-linux-x86_64-4.0.18/      ./bin/mongod -bind_ip_all -fork -f mongodb.conf

3 更改数据库权限
   命令  cd  mongodb/mongodb-linux-x86_64-4.0.18/bin/  
   命令  chmod 777 mongo
   命令  ./mongo
   命令 use admin
   命令 db.createUser( {user: "root",pwd: "root001",roles: [ { role: "root", db: "admin" } ]})
   命令 db.createUser( {user: "admin",pwd: "admin001",roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]})
   命令 use idoc
   命令 db.test.insert({name:"test"})
   命令 db.createUser( {user: "dev",pwd: "Dev001",roles: [ { role: "readWrite", db: "idoc" } ]})

4  编辑mongodb\mongodb-linux-x86_64-4.0.18\mongodb.conf
      dbpath = /opt/mongodb/data/lib #数据文件存放目录
      logpath = /opt/mongodb/log/db.log #日志文件存放目录
      port = 27017  #端口
      auth=true


5 杀掉服务重启   ps -ef|grep mongo     kill -9 pid
