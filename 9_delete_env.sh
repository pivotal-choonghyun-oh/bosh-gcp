#!/bin/bash

bosh delete-env bosh-deployment/bosh.yml \
    --state=state.json \
    --vars-store=creds.yml \
    -o bosh-deployment/gcp/cpi.yml \
    -o bosh-deployment/jumpbox-user.yml \
    -o bosh-deployment/external-ip-not-recommended.yml \
    -v director_name=bosh-1 \
    -v internal_cidr=192.168.1.0/24 \
    -v internal_gw=192.168.1.1 \
    -v internal_ip=192.168.1.200 \
    -v external_ip=35.201.194.2 \
    --var-file gcp_credentials_json=./gcp.json \
    -v project_id=sa-coh \
    -v zone=asia-east1-a \
    -v tags=[bosh-ext,concourse] \
    -v network=vpc-ci \
    -v subnetwork=ci-infra
