#!/bin/bash

# https://apple.stackexchange.com/a/55886
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# see
# https://stackoverflow.com/questions/21964709/how-to-set-or-change-the-default-java-jdk-version-on-os-x?answertab=votes#tab-top
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

export SCALA_HOME=/Users/michael.reynolds/tools/scala
export SBT_HOME=/Users/michael.reynolds/tools/sbt
export GRADLE_HOME=/Users/michael.reynolds/tools/gradle
export MAVEN_HOME=/Users/michael.reynolds/tools/maven

export PATH=$PATH:JAVA_HOME/bin
export PATH=$PATH:$SCALA_HOME/bin
export PATH=$PATH:$SBT_HOME
export PATH=$PATH:$GRADLE_HOME/bin
export PATH=$PATH:/Users/michael.reynolds/bin
export PATH=$PATH:$MAVEN_HOME/bin
