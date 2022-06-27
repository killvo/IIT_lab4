#!/bin/sh
cd /project
mvn clean install
cd hello_bot
mvn exec:java -Dexec.mainClass="kpi.acts.appz.bot.hellobot.HelloWorldBot" -Dexec.args="5333989582:AAHJbEIhzB7ACbR-T_pWXgvLX62GOFjSmwE iit_lab2_team4_bot"