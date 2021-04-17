#!/bin/bash

wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
yum upgrade
yum install jenkins java-1.8.0-openjdk-devel git
systemctl daemon-reload
systemctl start jenkins
systemctl status jenkins

cp cat /var/lib/jenkins/secrets/initialAdminPassword ~

