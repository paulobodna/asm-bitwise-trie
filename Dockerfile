FROM ubuntu:latest
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install default-jre -y
RUN apt-get install curl -y
RUN curl -L -o mars.jar https://dpetersanderson.github.io/Mars4_5.jar
CMD ["java", "-jar", "mars.jar", "nc", "bitwise-trie.asm"]