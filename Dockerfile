FROM ruby:2.7.2
WORKDIR /var/www/redmine
COPY Gemfile* /var/www/redmine
RUN bundle install
COPY . .
RUN mkdir -p tmp/pids tmp/sockets public/plugin_assets
RUN cp config/database.yml.example config/database.yml
EXPOSE 3000
ENV RAILS_ENV=production
RUN gem install mysql2 
RUN rake generate_secret_token
CMD RAILS_ENV=production rake db:create && RAILS_ENV=production rake db:migrate && bundle exec puma -C config/puma.rb

