#!/bin/sh
if mvn help:evaluate -Dexpression=project.version -q -DforceStdout | grep SNAPSHOT; then
    mvn -V -B --no-transfer-progress -P snapshot-release --settings deploy/settings.xml deploy
else
    mvn -V -B --no-transfer-progress install
fi
