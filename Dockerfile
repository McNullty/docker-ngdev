FROM ubuntu:trusty
MAINTAINER mladen.cikara@gmail.com

# Installing Node.js and npm
RUN apt-get update &&\
  apt-get install -y software-properties-common python-software-properties &&\
  apt-get install -y git ruby ruby-dev &&\
  add-apt-repository ppa:chris-lea/node.js &&\
  apt-get update &&\
  apt-get install -y nodejs

# Installing compass and sass
RUN gem install sass &&\
  gem install compass

# Installing Yeoman
RUN npm install --global yo bower grunt-cli phantomjs generator-angular &&\

#RUN adduser --disabled-password --home=/home/yeoman --gecos "" yeoman

#ENV HOME /home/yeoman
#USER yeoman
#WORKDIR /home/yeoman/app

# Expose the port
EXPOSE 9000

CMD ["/bin/bash"]