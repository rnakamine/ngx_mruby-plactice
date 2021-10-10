FROM ruby:2.7.2-alpine

RUN apk update && apk upgrade

WORKDIR /app
COPY Gemfile .

RUN bundle install

COPY . /app

EXPOSE 8080
CMD ["ruby", "app.rb", "-o", "0.0.0.0"]
