#!/bin/bash

java -Xmx1g -XX:MaxMetaspaceSize=250M -Djava.awt.headless=true -Djetbrains.youtrack.disableBrowser=true -jar youtrack-${YOUTRACK_VERSION}.${YOUTRACK_BUILD}.jar ${YOUTRACK_PORT}