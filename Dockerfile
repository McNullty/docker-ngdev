FROM ubuntu:trusty
MAINTAINER mladen.cikara@gmail.com

# Installing Node.js and npm
RUN apt-get update &&\
  apt-get install -y software-properties-common python-software-properties phantomjs &&\
  apt-get install -y git ruby ruby-dev make &&\
  add-apt-repository ppa:chris-lea/node.js &&\
  apt-get update &&\
  apt-get install -y nodejs

# Installing compass and sass
RUN gem install sass &&\
  gem install compass

# Installing Yeoman
RUN npm install --global yo bower grunt-cli generator-angular

RUN adduser --disabled-password --home=/home/yeoman --gecos "" yeoman

ENV HOME /home/yeoman
USER yeoman
WORKDIR /home/yeoman/app

# Expose the port
EXPOSE 9000 9001 35729

CMD ["/bin/bash"]