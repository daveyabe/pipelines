#!/bin/sh
inotifywait -m --includei 'STUFF*' -e close_write /root/rapid |
while read -r line
        do
        if echo $line; then \
        sleep 3;
        ( curl \
        -X POST \
        -H "Accept: application/vnd.github.v3+json" \
        -H "Authorization: token github_pat_RANDOMSTRING7" \
        https://api.github.com/repos/daveyabe/naff/actions/workflows/run-pipeline.yml/dispatches \
        -d '{"ref":"refs/heads/main", "inputs": { "ENVIRONMENT":"PRODUCTION"}}' ) &
        fi
done
