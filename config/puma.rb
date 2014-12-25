threads 1,16
workers 1
preload_app!
environment 'production'
daemonize true
pidfile '/data/www/sentwix/shared/tmp/pids/puma.pid'
state_path '/data/www/sentwix/shared/tmp/pids/puma.state'
stdout_redirect '/data/www/sentwix/shared/log/stdout', '/data/www/sentwix/shared/log/stderr', true
bind 'unix:///data/www/sentwix/shared/tmp/sockets/sentwix-puma.sock'
