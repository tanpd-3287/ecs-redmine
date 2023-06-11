#!/usr/bin/env puma
# start puma with:
# RAILS_ENV=production bundle exec puma -C ./config/puma.rb

application_path = '/var/www/redmine'
directory application_path
environment 'production'
#daemonize true
pidfile "#{application_path}/tmp/pids/puma.pid"
state_path "#{application_path}/tmp/pids/puma.state"
stdout_redirect "#{application_path}/log/puma.stdout.log","#{application_path}/log/puma.stderr.log"
#bind "unix://#{application_path}/tmp/sockets/redmine.sock"
bind "tcp://0.0.0.0:3000"     #app chạy dưới cổng 3000

