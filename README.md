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
ls -lh txlib # 查看支持的版本

docker run -e VERSION=txlib中支持的版本 unidbg-fetch-qsign:latest
```

## 已经编译好的镜像
```sh
docker pull registry.cn-beijing.aliyuncs.com/zero-tools/unidbg-fetch-qsign:latest

# 支持8.9.63, 8.9.68, 8.9.70
docker run registry.cn-beijing.aliyuncs.com/zero-tools/unidbg-fetch-qsign:latest
```

# 支持的环境变量

| 参数 | 默认值 |
| - | - |
| VERSION | 8.9.63 |
| ADDRESS | 0.0.0.0 |
| PORT | 8080 |