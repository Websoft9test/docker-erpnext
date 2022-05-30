# ERPNext

## About Install

官方非常及时的更新了安装所需的镜像，且提供了灵活多变的 docker compose 文件以供用户使用。  

由于过于灵活，导致理解起来有些困难。 实际上 ERPNext 的安装比较简单：

1. 将 example.env 另存成 .env
2. 启动时引入主 compose 文件以及有选择性的启动 overrides 文件夹下的 docker compose 文件 (多 compose 文件的用法)
```
docker compose -f  compose.yaml -f ./overrides/compose.mariadb.yaml -f ...   up -d
```

3. 主服务 backend 中创建一个 erpnext 项目（此步骤很容易被忽略）
```
docker-compose exec backend bench new-site <site-name> --mariadb-root-password <db-password> --admin-password <admin-password>
```
参考：https://github1s.com/frappe/frappe_docker/blob/HEAD/docs/site-operations.md

## FAQ

#### 默认管理员账号密码？

username: Administrator  
password: admin

#### ERPNext 镜像与 Frappe 镜像有什么区别？

有待研究，实验中发现 ERPNext  不会出现图片乱码问题