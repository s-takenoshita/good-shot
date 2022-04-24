FROM ruby:2.7.6
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /GoodShotTour
COPY Gemfile Gemfile.lock /GoodShotTour/
RUN bundle install