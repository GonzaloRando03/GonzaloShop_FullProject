FROM mongo:4.2.9-bionic
COPY ./entrypoint.sh /
RUN ./entrypoint.sh 1> run.log 2> error.log