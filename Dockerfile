FROM ruby:latest
WORKDIR /app/
RUN bundle install
ADD . /app/
CMD ["ruby","exec","ruby","/app/app.rb"]