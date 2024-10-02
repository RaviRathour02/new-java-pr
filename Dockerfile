FROM tomcat:latest
RUN cp -R /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
RUN ls -la webapp/target/
RUN webapp/target/*.war /usr/local/tomcat/webapps
RUN ls -la /usr/local/tomcat/webapps



