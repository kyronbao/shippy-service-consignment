## 练习 

https://ewanvalentine.io/microservices-in-golang-part-2/

### v2-2 使用cli调用service服务
和上一版本比较：
    使用 Multi-stage builds 功能： 一个Dockerfile建两个images,  
      一个image通过依赖构建二进制文件, 一个image用来run  
    移除Makefile中的go build  
(其他参考：https://medium.com/@pliutau/docker-and-go-modules-4265894f9fc)  

使用
  执行sudo make build时从容器中构建二进制文件，然后在容器中运行 

运行方法  
  sudo make build && sudo make run   