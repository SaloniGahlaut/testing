FROM centos
MAINTAINER SaloniGahlaut
LABEL version=v1
RUN yum install java-1.8.0-openjdk -y
COPY jenkins.war .
HEALTHCHECK CMD curl --fail http://localhost:8080||exit 1
CMD ["java", "-jar", "jenkins.war"]
EXPOSE 8080
