#!/bin/bash

env
rails -v
ruby -v
bundle exec rails db:create db:migrate
bundle exec rails s -b 0.0.0.0 -p 8080

