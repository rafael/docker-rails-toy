# Dockerfile for a Rails application using Nginx and Unicorn

# Select ubuntu as the base image
FROM ubuntu

# Install nginx, nodejs and curl
RUN apt-get update -q
RUN apt-get install -qy curl

# Install rvm, ruby, bundler
RUN curl -sSL https://get.rvm.io | bash -s stable
RUN /bin/bash -l -c "rvm requirements"
RUN /bin/bash -l -c "rvm install 2.1.0"
RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"

# set WORKDIR
WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock

# bundle install
RUN /bin/bash -l -c "bundle install"

# Add configuration files in repository to filesystem
ADD config/container/start-server.sh /usr/bin/start-server
RUN chmod +x /usr/bin/start-server




WORKDIR /webapp
# Add rails project to project directory
ADD ./ /webapp

# Publish port 3000
EXPOSE 3000

# Startup commands
ENTRYPOINT /usr/bin/start-server
