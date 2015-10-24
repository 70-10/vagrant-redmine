#!/bin/bash

if ! [ `which ansible` ]; then
  sudo yum localinstall http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm -y
  # RedHat 5系 (32bit)
  # http://dl.fedoraproject.org/pub/epel/5/i386/epel-release-5-4.noarch.rpm
  # RedHat 5系 (64bit)
  # http://dl.fedoraproject.org/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm
  # RedHat 6系 (32bit)
  # http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
  # RedHat 6系 (64bit)
  # http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
  # RedHat 7系 (64bit)
  # http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-2.noarch.rpm
  sudo yum install ansible -y
fi

cd /playbook
ansible-playbook -i hosts/localvm -t localvm vagrant.yml
