From openjdk:8
ADD target/docker-mk.war docker-mk.war
EXPOSE 8085
ENTRYPOINT ["./wait-for-it.sh", "mysql-standalone:3306", "--",java", "-jar", "docker-mk.war"] 
