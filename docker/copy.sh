#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
# echo "begin copy sql "
# cp ../sql/ry_20210908.sql ./mysql/db
# cp ../sql/ry_config_20220114.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r D:/开源/20220807104514/noobzz-admin/dist/** ./noobzz/dist


# copy jar
echo "begin copy noobzz-gateway "
cp ../noobzz-gateway/target/noobzz-gateway.jar ./noobzz

echo "begin copy noobzz-auth "
cp ../noobzz-auth/target/noobzz-auth.jar ./noobzz

echo "begin copy noobzz-visual "
cp ../noobzz-visual/noobzz-monitor/target/noobzz-visual-monitor.jar  ./noobzz

echo "begin copy noobzz-modules-system "
cp ../noobzz-modules/noobzz-system/target/noobzz-modules-system.jar ./noobzz

# echo "begin copy noobzz-modules-file "
# cp ../noobzz-modules/noobzz-file/target/noobzz-modules-file.jar ./ruoyi/modules/file/jar

# echo "begin copy noobzz-modules-job "
# cp ../noobzz-modules/noobzz-job/target/noobzz-modules-job.jar ./ruoyi/modules/job/jar

# echo "begin copy noobzz-modules-gen "
# cp ../noobzz-modules/noobzz-gen/target/noobzz-modules-gen.jar ./ruoyi/modules/gen/jar

