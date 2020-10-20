FROM ruby:2.6.3

RUN mkdir /orders

WORKDIR /orders

COPY . /orders

ENV PORT 3000

RUN gem install bundler -v 2.0.2
RUN bundle install

EXPOSE $PORT

#CMD  bundle exec rackup -p $PORT
