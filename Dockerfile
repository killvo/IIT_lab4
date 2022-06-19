FROM maven:3-openjdk-8

COPY hello_bot /project/hello_bot
COPY telegram_bot /project/telegram_bot
COPY pom.xml /project/pom.xml
COPY build_project.sh /project/build_project.sh

RUN ["chmod", "+x", "/project/build_project.sh"]

ENTRYPOINT ["/project/build_project.sh"]
