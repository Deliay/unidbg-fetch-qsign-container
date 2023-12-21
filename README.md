unidbg-fetch-qsign 镜像构建
----

# 使用方法

## 自己编译
1. 安装docker

2. 下载`unidbg-fetch-qsign`解压到本目录，确保`bin`,`lib`,`txlib`和Dockerfile在同级
```bash
wget ".../unidbg-fetch-qsign.zip"
7z x unidbg-fetch-qsign.zip
```

3. 编译docker镜像
```sh
docker build . -t unidbg-fetch-qsign:latest
```

4. 运行
```sh
docker run unidbg-fetch-qsign:latest
```

## 已经编译好的镜像
```sh
docker pull registry.cn-beijing.aliyuncs.com/zero-tools/unidbg-fetch-qsign:latest

docker run registry.cn-beijing.aliyuncs.com/zero-tools/unidbg-fetch-qsign:latest
```