#! /bin/bash
bundle check || bundle install

bundle exec ruby myapp.rb
