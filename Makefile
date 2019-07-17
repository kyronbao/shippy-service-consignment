build:
# 一定要注意 Makefile 中的缩进，否则执行 make build 可能报错：make: Nothing to be done for `build'.
# protoc 命令前边是一个 Tab，不是四个空格
	protoc --proto_path=. --micro_out=. --go_out=. proto/consignment/consignment.proto
	# 根据当前目录下的 Dockerfile 生成名为 consignment-service 的镜像
	docker build -t consignment-service .
run:
	# 在 Docker alpine 容器的 50001 端口上运行 consignment-service 服务
	# 可添加 -d 参数将微服务放到后台运行
	docker run -p 50051:50051 \
	 -e MICRO_SERVER_ADDRESS=:50051 \
	 -e MICRO_REGISTRY=mdns \
	 consignment-service