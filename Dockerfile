FROM ruby:2.3.3


RUN apt-get update -qq && \
    apt-get install -y build-essential vim

ENV app /app
RUN mkdir $app
WORKDIR $app

ENV BUNDLE_PATH /box

ADD . $app
