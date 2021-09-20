FROM ubuntu:xenial-20210804
LABEL name="Sri Timmaraju"
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install gnupg2 -y && \
    wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | apt-key add - && \
    echo "deb https://packages.cloudfoundry.org/debian stable main" | tee /etc/apt/sources.list.d/cloudfoundry-cli.list && \
    apt-get install software-properties-common -y && \
    apt-get install git -y && \
    apt-get install curl -y && \
    apt-get install rubygems -y && \
    apt-get install cf-cli -y && \
    gem install cf-uaac
