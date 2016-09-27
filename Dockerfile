FROM openjdk:8-jre-alpine
RUN mkdir /opt && wget -q http://nilhcem.github.com/FakeSMTP/downloads/fakeSMTP-latest.zip && unzip fakeSMTP-latest.zip -d /opt && rm fakeSMTP-latest.zip
RUN mv /opt/fakeSMTP*.jar /opt/fakeSMTP.jar
EXPOSE 25
VOLUME ["/var/mail"]
CMD java -jar /opt/fakeSMTP.jar --start-server --background --output-dir /var/mail --port 25
