### 1. 【前提条件】已安装docker + docker-compose

如果还未安装，参考网上的教程 （例如：https://cloud.tencent.com/developer/article/1352216）



### 2. dock login登录镜像Registry（华为云SWR）

```shell
docker login -u {用户名} -p {密码} swr.cn-north-4.myhuaweicloud.com
```



### 3. 在docker-compose.yml所在目录下执行

```shell
export REGISTRY_URL=swr.cn-north-4.myhuaweicloud.com/quest/
docker-compose up -d
```

