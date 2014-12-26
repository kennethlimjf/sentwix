set :output, "#{path}/../../shared/log/cron.log"

every 1.day, :at => '4:30 am' do
  rake 'analysis'
end
