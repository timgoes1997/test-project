FROM gradle:4.3-jdk-alpine
ADD --chown=gradle . /test-project
WORKDIR /test-project
CMD ["gradle", "--stacktrace", "build"]
CMD ["java", "-jar", "/test-project/build/libs/ArtifactId-1.0-SNAPSHOT.jar"]
