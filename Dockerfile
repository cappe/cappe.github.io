FROM jekyll/jekyll:pages

RUN apk update && apk add \
    # development packages
    ruby-dev \
    gcc \
    make \
    curl \
    build-base \
    libc-dev \
    libffi-dev \
    zlib-dev \
    libxml2-dev \
    libgcrypt-dev \
    libxslt-dev \
    python

WORKDIR /srv/jekyll
COPY Gemfile Gemfile.lock ./

RUN bundle install && bundle update
