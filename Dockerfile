FROM anapsix/alpine-java
MAINTAINER galaksiya
COPY trend-asista-1.0-SNAPSHOT.jar  /home/trend-asista-1.0-SNAPSHOT.jar
CMD ["java","-Xmx128m","-Xms64m","-jar","/home/trend-asista-1.0-SNAPSHOT.jar"]