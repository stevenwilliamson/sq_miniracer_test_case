FROM ruby:3.0.2-slim-bullseye

# Update and install deps
RUN set -e; export DEBIAN_FRONTEND=noninteractive; \
  apt-get update && apt-get install --quiet=2 --no-install-recommends -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY Gemfile /

RUN bundle install
