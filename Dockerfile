FROM debian:jessie

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    kpartx \
    pigz \
    ruby \
    ruby-dev \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN gem update --system && \
    gem install --no-document serverspec \
    pry-byebug
