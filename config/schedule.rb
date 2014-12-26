set :output, "#{path}/../shared/log/cron.log"

every 1.minute do
  rake 'analysis'
end
