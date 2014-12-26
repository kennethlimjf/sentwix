set :output, "#{path}/../../shared/log/cron.log"

every 1.day do
  rake 'analysis'
end
