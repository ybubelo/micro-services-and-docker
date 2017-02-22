FROM java8

ADD ./target/time-server-1.0-SNAPSHOT.jar /time-server-1.0-SNAPSHOT.jar

EXPOSE 8080

HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost:8080/api/healthcheck || exit 1

CMD java -jar time-server-1.0-SNAPSHOT.jar