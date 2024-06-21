#!/bin/sh

export JAVA_HOME=/usr/lib/jvm/java-1.17.0-openjdk-amd64

export JENKINS_BASE=.

export JENKINS_HOME=${JENKINS_BASE}/.jenkins
java -Dhudson.plugins.git.GitSCM.ALLOW_LOCAL_CHECKOUT=true -Xmx1024m -jar ./jenkins.war --httpPort=8082
