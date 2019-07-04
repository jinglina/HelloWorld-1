FROM 10.7.12.250/feiteng/arm64v8/openjdk:8-jdk

RUN  mkdir /usr/src/myapp

COPY HelloWorld.cpp /usr/src/myapp

WORKDIR /usr/src/myapp 

CMD ["./a.out"]
