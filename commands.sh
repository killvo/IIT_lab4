#!/bin/sh
echo '> Installing Git'
sudo yum install -y git

echo '> Cloning repository appz_bot_example'
git clone https://github.com/halushko/appz_bot_example.git

echo '> Installing maven'
app update 
sudo yum install -y maven

cd appz_bot_example

echo '> Building project'
mvn clean install && cd hello_bot && mvn exec:java -Dexec.mainClass="kpi.acts.appz.bot.hellobot.HelloWorldBot" -Dexec.args="5333989582:AAHJbEIhzB7ACbR-T_pWXgvLX62GOFjSmwE iit_lab2_team4_bot"