From openjdk:8
ADD target/docker-mk.war docker-mk.war
EXPOSE 8085
ENTRYPOINT ["java", "-jar", "docker-mk.war"] 
