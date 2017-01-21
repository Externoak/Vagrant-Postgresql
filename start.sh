#!/bin/bash

vagrant up --no-provision

vagrant provision

ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory  postgresql/tasks/syn.yml
