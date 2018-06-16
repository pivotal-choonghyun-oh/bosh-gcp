#!/bin/bash

bosh2 alias-env bosh-1 -e 192.168.1.200 --ca-cert <(bosh2 int ./creds.yml --path /director_ssl/ca)

# Log in to the Director
export BOSH_CLIENT=admin
export BOSH_CLIENT_SECRET=`bosh2 int ./creds.yml --path /admin_password`

# Query the Director for more info
bosh2 -e bosh-1 log-in << EOF
admin
vgjdtxlu63px7fytnya3
EOF
