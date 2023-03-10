FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y

# Install gradle
RUN apt-get install wget -y
RUN apt-get install unzip -y
RUN apt-get install openjdk-11-jre-headless -y
RUN rm -r -f /tmp
RUN wget https://services.gradle.org/distributions/gradle-7.5.1-bin.zip -P /tmp
RUN unzip -d /opt/gradle /tmp/gradle-7.5.1-bin.zip


COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
