FROM openjdk:17-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY demo-0.0.1-SNAPSHOT.jar plaintoservicemeshdemos.jar
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar plaintoservicemeshdemos.jar
