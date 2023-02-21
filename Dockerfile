FROM ruby:latest
WORKDIR /app/
RUN bundle install
ADD . /app/
CMD ["ruby", "/app/app.rb"]