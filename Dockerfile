# syntax=docker/dockerfile:1.4

FROM ruby:3.3.0
RUN apt-get update -qq && apt-get install -y nodejs npm
WORKDIR /segv_ruby330_tailwind

COPY . /segv_ruby330_tailwind

RUN bundle install
RUN bin/rails tailwindcss:build
