FROM maven:3-openjdk-8

COPY hello_bot /project/hello_bot
COPY telegram_bot /project/telegram_bot
COPY pom.xml /project/pom.xml

RUN cd /project && mvn clean install && cd hello_bot && mvn exec:java \
-Dexec.mainClass="kpi.acts.appz.bot.hellobot.HelloWorldBot" \
-Dexec.args="5333989582:AAHJbEIhzB7ACbR-T_pWXgvLX62GOFjSmwE iit_lab2_team4_bot"
