#!/bin/bash
user_name="ansible"

# add a user without password
sudo adduser --quiet \
  --disabled-password \
  --shell /bin/bash \
  --home /home/${user_name} \
  --gecos "User" ${user_name}

sudo usermod -aG sudo ${user_name}

sudo echo 'ansible ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/ansible


sudo mkdir /home/ansible/.ssh/
sudo cp ~/.ssh/authorized_keys /home/ansible/.ssh/authorized_keys
sudo chown ansible:ansible /home/ansible/.ssh/authorized_keys
sudo ls -l /home/ansible/.ssh/authorized_keys
