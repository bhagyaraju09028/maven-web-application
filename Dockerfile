FROM https://hub.docker.com/layers/tomcat/library/tomcat/8.5.77-jre8-temurin-focal/images/sha256-8f472ec5d8bc0c87fb3b43dc2d78350d5eb5448eefa4f04dfc2b63e401f53592?context=explore
COPY target/maven-web-app*.war /usr/local/tomcat/webapps/maven-web-application.war
