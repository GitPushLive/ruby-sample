FROM ruby:2.7.7
WORKDIR /app
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN gem install --default bundler -v 2.3.26
RUN bundle install
COPY . .
CMD ["ruby","exec","ruby","/app/app.rb"]