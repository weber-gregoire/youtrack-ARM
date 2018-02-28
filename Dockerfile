FROM        openjdk:9-jre

ENV         APP_VERSION="2017.4"
ENV         APP_BUILD="39406"
ENV         PORT="80"

EXPOSE      ${PORT}

LABEL       maintainer="Grégoire Weber"
LABEL       version="${APP_VERSION}.${APP_BUILD}"

WORKDIR     /youtrack

RUN         wget -qO youtrack-${APP_VERSION}.${APP_BUILD}.zip https://download.jetbrains.com/charisma/youtrack-${APP_VERSION}.${APP_BUILD}.jar

ENTRYPOINT  ["java", "-Xmx1g", "-XX:MaxMetaspaceSize=250M", "-Djava.awt.headless=true", "-jar", "youtrack-${APP_VERSION}.${APP_BUILD}.jar"]
CMD         "${PORT}"