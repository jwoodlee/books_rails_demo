#!/bin/bash
export DATABASE_URL="postgresql://book-demo.cluster-coehuv4zwaxh.us-east-1.rds.amazonaws.com"
export DEMO_DATABASE_USER="demo"
export DEMO_DATABASE_PASSWORD="demoRails1"
export SECRET_KEY_BASE="secret"
export RAILS_ENV="production"

env
rails -v
ruby -v
bundle exec rails runner 'puts ActiveRecord::Base.configurations.inspect'
bundle exec rails db:create db:migrate
bundle exec rails s -b 0.0.0.0 -p 8080

