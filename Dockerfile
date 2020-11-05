From openjdk:8
WORKDIR /app
ADD target/docker-mk.war docker-mk.war
COPY wait-for-it.sh wait-for-it.sh
RUN chmod +x wait-for-it.sh
EXPOSE 8085
ENTRYPOINT ["./wait-for-it.sh", "mysql-standalone:3306", "--", "java",  "-jar", "docker-mk.war"