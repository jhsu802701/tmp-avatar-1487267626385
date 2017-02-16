#!/bin/bash

# After you use the reset.sh script to return the Docker container to a
# fresh Ruby on Rails environment and use the "git clone" command to 
# download this project's source code, running this script sets up this 
# project AND runs all tests.

# Resetting the Docker container to its original state AND running this 
# script ensures that you are on top of all dependencies and can avoid 
# being stopped in your tracks by the infamous "works on my machine" 
# problem.

# This is Joel Spolsky's one-step build process at work.

# Killing the spring server is usually not necessary, but it's better to 
# include this script and not need it than to need it but not have it.

sh pg-start.sh

echo '--------------'
echo 'bundle install'
bundle install

sh kill_spring.sh

echo '----------------'
echo 'rails db:migrate'
rails db:migrate

echo '-----------------'
echo 'sh kill_spring.sh'
sh kill_spring.sh

echo "\n\n\n\n\n\n\n\n\n\n"

echo '----------'
echo 'rails test'
rails test
