#!/bin/bash
set -e
cd terraform
terraform init
terraform apply -var-file ../secrets/credentials.tfvars
cd ..
