FROM ibm-semeru-runtimes:open-17-jre-jammy
ARG jar-name=unset
ENV jar-name ${jar-name}
RUN printf '#!/usr/bin/env bash\n' > entrypoint.sh && printf "echo PID \$$\nexec java -jar ${jar-name}\n" >> entrypoint.sh && chmod 777 entrypoint.sh && ls -lat
COPY ${jar-name} .
ENTRYPOINT ["./entrypoint.sh"]