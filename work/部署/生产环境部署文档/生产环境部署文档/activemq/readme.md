1，上传解压。
2，修改配置文件/opt/activemq/apache-activemq-5.10.0/conf/activemq.xml
   broker标签尾部加上如下内容
   <broker>
       ......  
       <plugins>
            <simpleAuthenticationPlugin>
               <users>
                   <authenticationUser username="dev" password="Dev@001!" groups="users,admins"/>
               </users>
            </simpleAuthenticationPlugin>
        </plugins>
    </broker>
3，修改配置文件/opt/activemq/apache-activemq-5.10.0/conf/jetty-realm.properties
   # Defines users that can access the web (console, demo, etc.)
   # username: password [,rolename ...]
   admin: admin, admin
   user: user, user
   dev: Dev@001!, user
4， 启动
     cd /opt/activemq/apache-activemq-5.10.0
     bin/activemq start