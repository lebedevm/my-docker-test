FROM openjdk:alpine
LABEL Author="Michael Lebedev"
COPY ./sources /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javac Sample.java
RUN rm Sample.java
CMD ["java", "Sample"]

#RUN javac Sample.java && rm Sample.java
#CMD java Sample
