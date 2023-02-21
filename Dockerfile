FROM ruby:2.7.7
WORKDIR /app/
ADD . /app/
RUN gem install --default bundler -v 2.3.26
RUN bundle install
CMD ["ruby","exec","ruby","/app/app.rb"]