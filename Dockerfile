FROM alpine:3.19
WORKDIR /
RUN apk --update add openjdk11 git maven 
RUN git clone https://github.com/hdiv/insecure-bank.git
RUN cd /insecure-bank && mvn clean package
EXPOSE 8080
ENTRYPOINT cd /insecure-bank && mvn cargo:run