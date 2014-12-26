every 1.minute do
  command "source ~/.bashrc; rbenv shell 2.1.5; cd /data/www/sentwix/current && RAILS_ENV=production bundle exec rake analysis --silent >> /data/www/sentwix/shared/log/cron.log 2>&1"
end
