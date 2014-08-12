#!/bin/bash

# Copyright (c) 2012-2014 Snowplow Analytics Ltd. All rights reserved.
#
# This program is licensed to you under the Apache License Version 2.0,
# and you may not use this file except in compliance with the Apache License Version 2.0.
# You may obtain a copy of the Apache License Version 2.0 at http://www.apache.org/licenses/LICENSE-2.0.
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the Apache License Version 2.0 is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the Apache License Version 2.0 for the specific language governing permissions and limitations there under.

# Update these for your environment
rvm_path=/path/to/.rvm # Typically in the $HOME of the user who installed RVM
LOADER_PATH=/path/to/snowplow/4-storage/snowplow-storage-loader
LOADER_CONFIG=/path/to/your-loader-config.yml

# Load the RVM environment
export PATH=$PATH:${rvm_path}/bin
source ${rvm_path}/scripts/rvm

# Run the daily ETL job
export BUNDLE_GEMFILE=${LOADER_PATH}/Gemfile
bundle exec ${LOADER_PATH}/bin/snowplow-storage-loader --config ${LOADER_CONFIG}
