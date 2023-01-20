#!/bin/sh -l

echo "Beginning Build Task"

# Initialize Gradle
/opt/gradle/gradle-7.5.1/bin/gradle wrapper
chmod +x gradlew

./gradlew build
