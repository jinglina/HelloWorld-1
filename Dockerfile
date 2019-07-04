FROM gcc

USER root
RUN  mkdir /usr/src/myapp

COPY HelloWorld.c /usr/src/myapp
WORKDIR /usr/src/myapp
RUN gcc HelloWorld.c

CMD ["./a.out"]

 
