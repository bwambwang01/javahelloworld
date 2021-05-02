FROM java:8
COPY src /home/node01/javahelloworld/src
WORKDIR /home/node01/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
