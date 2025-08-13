#!/bin/bash
# run_ansible_main.sh
# This script runs the main Ansible playbook for the lab environment.

# Get the directory of this script, then go up one level to the repo root
DIR="$(cd "$(dirname "$0")" && pwd)/.."

# Run the main playbook with the inventory
ansible-playbook -i "$DIR/inventory/inventory.ini" "$DIR/main.yml"