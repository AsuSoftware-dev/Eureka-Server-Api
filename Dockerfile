# Utilizarea unei imagini openjdk ca bază
FROM openjdk:17-jdk-slim

# Setarea directorului de lucru în container
WORKDIR /app

# Copierea fișierului JAR generat în directorul de lucru
COPY target/eureka-server-0.0.1-SNAPSHOT.jar eureka-server.jar

# Expunerea portului pe care va rula Eureka
EXPOSE 8761

# Comanda de rulare a aplicației
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]
