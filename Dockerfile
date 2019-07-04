FROM 10.7.12.250/feiteng/arm64v8/openjdk:8-jdk

USER root
RUN  mkdir /usr/src/myapp

COPY HelloWorld.c /usr/src/myapp

WORKDIR /usr/src/myapp 

RUN /usr/bin/gcc HelloWorld.c

CMD ["./a.out"]
