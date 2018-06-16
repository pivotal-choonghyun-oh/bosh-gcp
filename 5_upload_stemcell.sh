#!/bin/bash


bosh2 -e bosh-1 upload-stemcell https://s3.amazonaws.com/bosh-core-stemcells/google/bosh-stemcell-3468.15-google-kvm-ubuntu-trusty-go_agent.tgz
