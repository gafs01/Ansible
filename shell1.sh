#!/bin/bash
cd ~
ansible -b -u ansible all -m package -a "name=tree state=present"
ansible -b -u ansible all -m file -a "path=/etc/localtime state=link src=/usr/share/zoneinfo/Europe/Berlin force=true"


