erb config/redshift.yml.erb >config/config.yml
bundle exec bin/snowplow-storage-loader -c config/config.yml --skip ${RUNNER_SKIP:-analyze}
