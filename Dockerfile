FROM openjdk:9
ADD target/crispy-0.0.1-SNAPSHOT.jar crispy-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/crispy-0.0.1-SNAPSHOT.jar"]