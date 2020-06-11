#!/bin/bash
nohup java -jar HelloWorld.jar >> app.log 2>&1 & sleep 60
