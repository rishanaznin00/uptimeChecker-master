FROM maven:3.8.5-openjdk-8 as maven
WORKDIR /usr/src/app
COPY pom.xml /usr/src/app
COPY src /usr/src/app/src
RUN mvn clean package -DskipTests

FROM tomcat:9.0-jdk8
WORKDIR /usr/local/tomcat/webapps/
COPY --from=maven /usr/src/app/target/uptimeChecker-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/uptimeChecker-0.0.1-SNAPSHOT.war
RUN chmod 644 /usr/local/tomcat/webapps/uptimeChecker-0.0.1-SNAPSHOT.war

EXPOSE 9090
