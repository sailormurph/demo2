FROM ibm-semeru-runtimes:open-17-jre-jammy
ARG jarname
ENV jarname ${jarname}
RUN printf '#!/usr/bin/env bash\n' > entrypoint.sh && printf "echo PID \$$\nexec java -jar ${jarname}\n" >> entrypoint.sh && chmod 777 entrypoint.sh && ls -lat
RUN chmod 777 entrypoint.sh
RUN ls -lath
COPY ${jarname} .
ENTRYPOINT ["./entrypoint.sh"]