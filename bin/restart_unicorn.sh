#!/bin/bash
pkill -9 -f delayed_job
pkill -9 -f unicorn
RAILS_ENV=production script/delayed_job start
unicorn_rails -c config/unicorn.rb -E production -D
