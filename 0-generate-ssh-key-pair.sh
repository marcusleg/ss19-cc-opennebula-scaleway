#!/bin/bash
ssh-keygen -t rsa -b 4096 -C "opennebula" -P "" -f secrets/id_rsa
