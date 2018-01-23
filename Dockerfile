FROM gocd/gocd-server:v17.12.0
RUN mkdir -p /godata/plugins/external
RUN curl --location --fail https://github.com/gocd-contrib/script-executor-task/releases/download/0.3/script-executor-0.3.0.jar > /godata/plugins/external/script-executor-0.3.0.jar
RUN chown -R 1000 /godata/plugins