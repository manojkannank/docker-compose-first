From openjdk:8
ADD target/docker-mk.war docker-mk.war
RUN wget -q https://github.com/vishnubob/wait-for-it/raw/master/wait-for-it.sh -O /usr/bin/wait-for-it && \
    chmod +x /usr/bin/wait-for-it
EXPOSE 8085
ENTRYPOINT ["/usr/bin/wait-for-it mysql-standalone:3306 -t 120 ","java", "-jar", "docker-mk.war"] 
