#!/bin/bash

TS=`date +%Y%m%d_%H%M%S`

USERS=30
RAMP_TIME=10
RAMP_STEPS=10
HOLD=10
DELAY=30
LAMBDA=10
JMETER_LOG=jmeter-${TS}.log
RESULTS=jmeter-${TS}.csv
URL=$URL_LOCAL

URL_REMOTE=http://172.16.10.53:8080/jpetstore
URL_LOCAL=http://127.0.0.1:8080/jpetstore


java -XX:+PreserveFramePointer -jar ../apache-jmeter-3.1/bin/ApacheJMeter.jar -p jmeter.properties -n -t jpetstore-load-test.jmx \
-l $RESULTS -j $JMETER_LOG \
-Jurl=$URL \
-Jusers=$USERS \
-Jramp_time=$RAMP_TIME \
-Jramp_steps=$RAMP_STEPS \
-Jhold=$HOLD \
-Jdelay=$DELAY \
-Jlambda=$LAMBDA
