erb config/redshift.yml.erb >config/config.yml

while :
do
  bundle exec bin/snowplow-storage-loader -c config/config.yml --skip ${RUNNER_SKIP:-analyze}
  sleep 86400
done