FROM ubuntu:trusty
RUN apt-get update && apt-get install -y git ssh tar gzip ca-certificates
