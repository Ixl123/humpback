FROM ubuntu

MAINTAINER jcofman <cofman.jacob@gmx.de>


# keep the container as small as possible
RUN apt-get update && \
    apt-get -y -u dist-upgrade && \
    apt-get install -y curl apt-transport-https bash && \
    curl -sL https://deb.nodesource.com/setup_7.x | bash && \
    apt-get update && apt-get install -y nodejs && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn && apt-get -y autoremove && apt-get clean \
    
# Install nvm
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

RUN mkdir -pv /app

ADD usr/local/bin/yarn.sh /usr/local/bin/yarn.sh

ENTRYPOINT ["/usr/local/bin/yarn.sh"]

