FROM ruby:2.7.7
WORKDIR /app
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install
COPY . .
CMD ["ruby","exec","ruby","/app/app.rb"]