FROM python:alpine

LABEL maintainer="Luis Miguel Vicente Fuentes"

# environment variables
ENV DEFAULT_USER=app
ENV INFLUXDB_VERSION=5.3.0

# non-root user
RUN adduser -D ${DEFAULT_USER}
USER ${DEFAULT_USER}

# install influxdb client
RUN pip install --upgrade pip
RUN pip install -Iv influxdb==${INFLUXDB_VERSION}
