#!/bin/bash

WEBHOOK="https://hooks.slack.com/services/T2Y3RKY7N/RANDOMSTRING"
MESSAGE="Heads up soldiers, we've got new data arriving! Time to kick off the Github offensive!"

curl -H 'Content-Type: application/json' -d "{\"text\": \"${MESSAGE}\" }" ${WEBHOOK}
exit 0
