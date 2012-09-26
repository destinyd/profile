#!/bin/bash
ps -ef | grep unicorn | grep -v grep | awk '{print $2}' | xargs kill -9
ps -ef | grep unicorn | grep -v grep | awk '{print $2}'
RAILS_ENV=production script/delayed_job start
unicorn_rails -c config/unicorn.rb -E production -D
