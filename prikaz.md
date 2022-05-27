ansible --private-key ~/.ssh/ansible -i inventory all -m ping
## ked je local ansible.cfg staci takto
ansible all -m ping
ansible all --list-hosts
## da JASON info
ansible all -m gather_facts
ansible all -m gather_facts --limit 192.168.122.214
