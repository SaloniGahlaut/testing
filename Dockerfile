FROM centos
MAINTAINER SaloniGahlaut
LABEL version=v1
RUN yum clean all
RUN yum install wget -y
RUN yum install java-1.8.0-openjdk -y
RUN wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
HEALTHCHECK CMD curl --fail http://localhost:8080||exit 1
CMD ["java", "-jar", "jenkins.war"]
EXPOSE 8080

