#!/bin/bash

mkdir -p ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/ansible
cd ~/UTNFRA_SO_Recu_2do_TP_Sotelo_Limont/202411/ansible

ansible-galaxy init 2PRecuperatorio
ansible-galaxy init Crea_Carpetas_sotelo
ansible-galaxy init Cambia_Propiedad_sotelo
ansible-galaxy init Sudoers_sotelo

cat > playbook.yml <<EOF
---
- name: TP Ansible - Mariano Sotelo
  hosts: localhost
  become: yes
  roles:
    - 2PRecuperatorio
    - Crea_Carpetas_sotelo
    - Cambia_Propiedad_sotelo
    - Sudoers_sotelo
EOF

ansible-playbook playbook.yml
