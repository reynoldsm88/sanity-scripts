#!/bin/bash

JAR=$(find . -name *assembly*.jar)
zip -d $JAR 'META-INF/.SF' 'META-INF/.RSA' 'META-INF/*SF'
