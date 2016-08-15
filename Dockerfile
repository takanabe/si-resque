FROM ruby:2.3.0
MAINTAINER Takayuki Watanabe <takanabe.w@gmail.com>

ENV LANG C.UTF-8
RUN apt-get update \
 && apt-get install -y build-essential
RUN gem install bundler

COPY Gemfile /tmp/Gemfile
RUN cd /tmp && bundle install
