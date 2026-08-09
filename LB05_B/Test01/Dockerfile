#Use Java 17 as the base image
FROM eclipse-temurin:17

#Set the working directory
WORKDIR /app

#Copy the java source code to the container
COPY HelloWorld.java  /app

#Compile the java source code 
RUN javac HelloWorld.java

#Set the Command to run the java application
CMD [ "java","HelloWorld"]