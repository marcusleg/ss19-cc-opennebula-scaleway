#!/bin/bash
ssh-keygen -t rsa -b 4096 -C "devops-project" -P "" -f secrets/id_rsa
