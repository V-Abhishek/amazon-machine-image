#!/bin/bash -eux

sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install -y openjdk-8-jdk
java -version
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
sudo echo $JAVA_HOME
sudo apt update  
sudo apt install -y maven
mvn -version
export M2_HOME=/usr/share/maven
export MAVEN_HOME=/usr/share/maven
export PATH=${M2_HOME}/bin:${PATH}
sudo echo $MAVEN_HOME