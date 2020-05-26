ARG RUBY_VERSION
FROM ruby:$RUBY_VERSION-slim-buster

#ARG PG_MAJOR
ARG NODE_MAJOR
ARG BUNDLER_VERSION

# Common dependencies
RUN apt-get update -qq \
  && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
    build-essential \
    gnupg2 \
    curl \
    less \
    git \
  && apt-get clean \
  && rm -rf /var/cache/apt/archives/* \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && truncate -s 0 /var/log/*log

# Install Heroku CLI
RUN curl https://cli-assets.heroku.com/install.sh | sh

# Add PostgreSQL to sources list
#RUN curl -sSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
#  && echo 'deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list

# Add NodeJS to sources list
RUN curl -sL https://deb.nodesource.com/setup_$NODE_MAJOR.x | bash -

# Install dependencies
COPY .dockerdev/Aptfile /tmp/Aptfile
RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get -yq dist-upgrade && \
  DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
    libpq-dev \
#    postgresql-client-$PG_MAJOR \
    nodejs \
#    yarn=$YARN_VERSION-1 \
    $(cat /tmp/Aptfile | xargs) && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    truncate -s 0 /var/log/*log

# Configure bundler
ENV LANG=C.UTF-8 \
  BUNDLE_JOBS=4 \
  BUNDLE_RETRY=3

# Upgrade RubyGems and install required Bundler version
RUN if test -z "$BUNDLER_VERSION"; then \
    gem update --system; \
  else \
    gem update --system \
    && rm /usr/local/lib/ruby/gems/*/specifications/default/bundler-*.gemspec \
    && gem uninstall bundler \
    && gem install bundler -v $BUNDLER_VERSION; \
  fi

# Create a directory for the app code
RUN mkdir -p /app

WORKDIR /app