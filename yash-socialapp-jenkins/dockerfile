FROM openjdk:11
MAINTAINER Yash Yadav<yash.mlvt@gmail.com>
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=web.yash.social/target/yash-social.jar
ADD ${JAR_FILE} yash-social.jar
ENTRYPOINT ["java","-jar","/yash-social.jar"]
