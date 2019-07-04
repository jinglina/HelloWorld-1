FROM gcc

RUN  mkdir /usr/src/myapp

COPY HelloWorld.cpp /usr/src/myapp

WORKDIR /usr/src/myapp 

CMD ["./a.out"]
