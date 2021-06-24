# Amazon Machine Image (AMI)

### PROJECT DESCRIPTION

This repository contains configuration for building Custom AMI required for deploying and running Online Bookstore web application. The AMI is built and made available on the AWS accounts by using CircleCI pipeline. The CircleCI pipeline leverages Packer to validate and build AMI.

---

### Customizations

1. Installed Java 8 and Maven using ```java.sh``` shell script
2. Installed Tomcat Server using ```tomcat.sh``` shell script
3. Installed AWS Cloud Watch using ```cloud-watch.sh``` shell script
4. Installed AWS Code Deploy Agent and started it using ```deploy-agent.sh``` shell script

---

### Validate and Build AMI

#### Validate AMI

``` sh packer validate ami.json ```

#### Build AMI

``` sh packer build
-var 'aws_access_key=REDACTED'
-var 'aws_secret_key=REDACTED'
-var 'aws_region=us-east-1'
-var 'subnet_id=REDACTED'
ami.json ```

