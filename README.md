# Amazon Machine Image (AMI)

### PROJECT DESCRIPTION

This repository contains configuration for building Custom AMI required for deploying and running [Online Bookstore](https://github.com/V-Abhishek/online-bookstore) web application. The AMI is built and made available on the AWS accounts by using CircleCI pipeline. The CircleCI pipeline leverages Packer to validate and build AMI.

---

### ARCHITECTURE

<img alt="Architecture" src="https://github.com/v-abhishek/amazon-machine-image/blob/main/images/Architecture.png" />

---

### AMI CUSTOMIZATION

1. Install Java 8 and Maven using ```java.sh``` shell script
2. Install Tomcat Server using ```tomcat.sh``` shell script
3. Install AWS Cloud Watch using ```cloud-watch.sh``` shell script
4. Install AWS Code Deploy Agent and start it using ```deploy-agent.sh``` shell script

---

### VALIDATE and BUILD AMI

#### Validate AMI

``` sh packer validate ami.json ```

#### Build AMI

``` 
sh packer build
-var 'aws_access_key=REDACTED'
-var 'aws_secret_key=REDACTED'
-var 'aws_region=us-east-1'
-var 'subnet_id=REDACTED'
ami.json 
```

