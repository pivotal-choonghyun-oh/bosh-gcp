#!/bin/bash

bosh2 -e bosh-1 upload-release https://github.com/concourse/concourse/releases/download/v3.8.0/concourse-3.8.0.tgz
bosh2 -e bosh-1 upload-release https://github.com/concourse/concourse/releases/download/v3.8.0/garden-runc-1.9.0.tgz
