#!/bin/bash

# NOTE: This step is necessary if you are using PostgreSQL in a Docker development environment.
# If you are not using PostgreSQL in the development environment, you can skip this step to save time.

echo '-----------------------------'
echo 'sudo service postgresql start'
sudo service postgresql start
