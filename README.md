# Dockerize Ruby App

 git clone https://github.com/tanpd-3287/docker-ruby/ ruby
 
 cd ruby/
 
 sudo mkdir -p tmp/pids tmp/sockets public/plugin_assets
 
 cp /config/database.yml.example /config/database.yml
 
 => change this
 
 production:
 
  adapter: mysql2
  
  database: redmine
  
  host: db
  
  username: redmine
  
  password: redmine
  
  encoding: utf8mb4
  
  
  => docker compose build && docker compose up -d
  
   ## Migrate DB
  docker compose exec app env RAILS_ENV=production rake db:migrate


