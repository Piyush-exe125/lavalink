# Official Lavalink v4 Image use kar rahe hain
FROM ghcr.io/lavalink-devs/lavalink:4

# Config file copy karo
COPY application.yml /opt/Lavalink/application.yml

# Port expose karo
EXPOSE 2333

# Lavalink start karo
ENTRYPOINT ["java", "-jar", "/opt/Lavalink/Lavalink.jar"]
