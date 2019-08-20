FROM ubuntu:trusty
ENV PUPPET_VERSION="3.8.7-1puppetlabs1"
ENV FACTER_VERSION="2.4.6-1puppetlabs1"
RUN apt-get update && apt-get install -y git ssh tar gzip ca-certificates curl wget ruby make ruby-dev git
RUN cd /tmp && wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb && dpkg -i puppetlabs-release-trusty.deb && apt-get update -q
RUN apt-get install -q -y puppet=${PUPPET_VERSION} facter=${FACTER_VERSION}
RUN apt-get update -q && apt-get autoremove -q -y
