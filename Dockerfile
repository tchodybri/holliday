
FROM tomcat:10.1-jdk11

# Maintainer 
LABEL maintainer="Dylan Tchomba" 

# Copy the WAR file into the tomcat webapps directory 

COPY webapp/target/tdb-lab.war 	 /usr/local/tomcat/webapps/

#Expose the default Tomcat Port 
EXPOSE 8080


#Start Tomcat

CMD ["catalina.sh", "run"]
