FROM ruby:3.0.2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

COPY . .
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["sh", "start_app_prod.sh"]