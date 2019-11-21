#!/bin/bash

RESULTS_DEST=/home/ec2-user/GitHub/insta_scrape/results
USERS="runitbackvtg thriftandvintagechicago methrift420 thegoonwill willies_vintage_lo"

for USER in $USERS
do
    # create folder to store images
    mkdir ${RESULTS_DEST}/images/$USER

    instagram-scraper $USER -d ${RESULTS_DEST}/images/$USER -t image --media-metadata -u naturalwine.chi -p 'Z!mmern1'

    #python $RESULTS_DEST/$JOB_NAME/save_args.py --job_name $JOB_NAME --users $USERS --destination $RESULTS_DEST/$JOB_NAME

    #move metadata to the parent directory
    META_EXT=.json

    METADATA_LOC=${RESULTS_DEST}/images/${USER}/${USER}$META_EXT

    mv $METADATA_LOC ${RESULTS_DEST}/metadata/
    sleep 1m
done



