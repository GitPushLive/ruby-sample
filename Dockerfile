FROM ruby:latest
WORKDIR /app/
RUN gem install --default bundler -v 2.3.26
RUN bundle install
ADD . /app/
CMD ["ruby","exec","ruby","/app/app.rb"]