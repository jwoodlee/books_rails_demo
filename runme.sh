#!/bin/bash
env
bundle exec rails runner 'puts ActiveRecord::Base.configurations.inspect'
bundle exec rails db:create db:migrate
bundle exec rails s -b 0.0.0.0 -p 8080

