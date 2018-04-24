FROM ubuntu
MAINTAINER <Vaibhav Ranglani> ranglani.vaibhav@gmail.com

RUN apt-get -y update && apt-get -y install software-properties-common python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get -y update && echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && apt-get -y install oracle-java8-installer
RUN apt-get -y install oracle-java8-set-default
