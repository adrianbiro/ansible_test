# Ansible

`ansible --private-key ~/.ssh/ansible -i inventory all -m ping`
### ked je local ansible.cfg staci takto
`ansible all -m ping`
`ansible all --list-hosts`
### da JASON info
`ansible all -m gather_facts`
`ansible all -m gather_facts --limit 192.168.122.214`

### ansible.builtin.apt module v dokumentacii je tu pod ansible.builtin
`ansible all -m apt -a update_cache=true --become --ask-become-pass`
`ansible all -m apt -a name=vim-nox --become --ask-become-pass`

### update pkg
`ansible all -m apt -a "name=zurl state=latest" --become --ask-become-pass`
### update all
`ansible all -m apt -a "upgrade=dist" --become --ask-become-pass`

### ansible-playbook
`ansible-playbook --ask-become-pass install_apache.yml`

`ansible-playbook --list-tags site.yml`
`ansible-playbook --tags ubuntu site.yml`
`ansible-playbook --tags "apache,db" site.yml`
