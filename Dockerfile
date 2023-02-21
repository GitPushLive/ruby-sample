FROM ruby:latest
WORKDIR /app/
RUN gem install bundler
RUN bundle install
ADD . /app/
CMD ["ruby","exec","ruby","/app/app.rb"]