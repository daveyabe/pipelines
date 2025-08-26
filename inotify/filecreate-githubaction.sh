#!/bin/sh
cd /home/inotify
inotifywait -m /home/inotify/data/zips -e create -e moved_to --include '.*\.zip$' >> inotifysync.log |
    while read -r directory action file; do
        /home/inotify/slacknotification.sh # If so, do your thing here!
        sleep 10
        ( curl \
        -X POST \
        -H "Accept: application/vnd.github.v3+json" \
        -H "Authorization: token github_pat_RANDOMSTRING" \
        https://api.github.com/repos/daveyabe/naff/actions/workflows/run-pipeline.yml/dispatches \
        -d '{"ref":"refs/heads/main"}' ) &
    done
