FROM ibm-semeru-runtimes:open-17-jre-jammy
COPY demo1.jar .
ENTRYPOINT ["java", "-jar", "demo1.jar"]