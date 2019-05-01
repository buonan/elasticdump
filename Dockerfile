# From original Spencer Herzberg's dockerfile [sherzberg/elasticdump]
# with the addition of version locking
FROM ubuntu:18.04

MAINTAINER brian@maven.io

RUN apt-get update -qq && apt-get install -y software-properties-common curl gcc g++ make

#RUN curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get update; apt-get install -y nodejs yarn

RUN npm install -g elasticdump@6.0.0

ENTRYPOINT ["/usr/bin/elasticdump"]