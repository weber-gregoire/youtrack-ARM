FROM        openjdk:9-jre

ENV         YOUTRACK_VERSION="2017.4"
ENV         YOUTRACK_BUILD="39406"
ENV         YOUTRACK_PORT="80"

EXPOSE      ${YOUTRACK_PORT}

LABEL       maintainer="Grégoire Weber"
LABEL       version="${YOUTRACK_VERSION}.${YOUTRACK_BUILD}"

WORKDIR     /youtrack

RUN         wget -qO youtrack-${YOUTRACK_VERSION}.${YOUTRACK_BUILD}.zip https://download.jetbrains.com/charisma/youtrack-${YOUTRACK_VERSION}.${YOUTRACK_BUILD}.jar
COPY        entrypoint.sh .

ENTRYPOINT  ["./entrypoint.sh"]