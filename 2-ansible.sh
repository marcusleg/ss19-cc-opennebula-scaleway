#!/bin/bash
cd ansible/
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i hosts.ini playbook.yaml
cd ..
