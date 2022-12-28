FROM ibm-semeru-runtimes:open-17-jre-jammy
ARG jar_name=unset
ENV jar_name ${jar_name}
RUN printf '#!/usr/bin/env bash\n' > entrypoint.sh && printf "echo PID \$$\nexec java -jar ${jar_name}\n" >> entrypoint.sh && chmod 777 entrypoint.sh && ls -lat
COPY ${jar_name} .
ENTRYPOINT ["./entrypoint.sh"]