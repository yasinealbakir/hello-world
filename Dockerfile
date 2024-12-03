# 1. Maven image ile build aşaması
FROM maven:3.9.4-eclipse-temurin-17 AS builder

# 2. Proje dosyalarını kopyala
WORKDIR /app
COPY pom.xml .
COPY src ./src

# 3. Maven ile projeyi build et
RUN mvn clean package

# 4. Çalıştırılabilir image oluşturma
FROM eclipse-temurin:17-jre

# 5. Projeden üretilen jar dosyasını kopyala
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar

# 6. Varsayılan çalıştırma komutu
CMD ["java", "-jar", "app.jar"]
