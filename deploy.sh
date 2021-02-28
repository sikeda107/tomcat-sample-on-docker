#!/bin/bash
cd ServletApp
./gradlew clean build
cp ./app/build/libs/hello.war ../webapps/
