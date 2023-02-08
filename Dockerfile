FROM ruby:3.1.0

LABEL org.opencontainers.image.source=https://github.com/sighup/xyz-webapp

WORKDIR /app
ADD src/Gemfile /app/Gemfile
ADD src/Gemfile.lock /app/Gemfile.lock
ADD src /app

RUN bundle install

EXPOSE 4567

CMD ["ruby", "app.rb"]
