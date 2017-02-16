#!/bin/bash

# Run this script to set up your project again after resetting the Docker container.

clear

sh build_fast.sh

FILE_LOG_OUTLINE='log/all-outline.log'
echo '---------------------------------'
echo "sh outline.sh > $FILE_LOG_OUTLINE"
sh outline.sh > $FILE_LOG_OUTLINE

d_mo='log/diagram-models.jpg'
d_co='log/diagram-controllers.jpg'
d_gems='log/diagram-gems.jpg'

echo 'outline.sh OUTPUT FILES:'
echo $d_mo
echo $d_co
echo $d_gems
echo 'Directory trees are in the notes directory.'

FILE_LOG_SEED='log/all-seed.log'
echo '---------------------------'
echo "sh seed.sh > $FILE_LOG_SEED"
sh seed.sh > $FILE_LOG_SEED

FILE_LOG_TEST_CODE='log/all-test_code.log'
echo '-------------------------------------'
echo "sh test_code.sh > $FILE_LOG_TEST_CODE"
sh test_code.sh > $FILE_LOG_TEST_CODE
echo 'The Gemsurance Report is at log/gemsurance_report.html .'
