FROM openjdk:9
ADD target/*.jar *.jar
ENTRYPOINT ["java", "-jar", "/*.jar"]