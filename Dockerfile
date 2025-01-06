
FROM tomcat:latest  

# Maintainer 
MAINTAINER "Dylan Tchomba" 

# Copy the WAR file into the tomcat webapps directory 

COPY webapp/target/tdb-lab.war .	 /usr/local/webapps/

#Expose the default Tomcat Port 
EXPOSE 8080


#Start Tomcat

CMD ["catalina.sh", "run"]
