#!/bin/bash
#
# Script to generate a kubeadm token
#

k8s_token=`python -c 'import random; print "%0x.%0x" % (random.SystemRandom().getrandbits(3*8), random.SystemRandom().getrandbits(8*8))'`

echo "Generated token: $k8s_token"
echo "k8s_token: $k8s_token" >> /home/dereck/Documents/work/ansible-playbooks/ansible-kubernetes/group_vars/all.yml
echo "token: $k8s_token" > /home/dereck/Documents/work/ansible-playbooks/ansible-kubernetes/roles/k8s/tasks/token.yml

sed -i s/xxxx/$k8s_token/g /home/dereck/Documents/work/ansible-playbooks/ansible-kubernetes/playbooks/master.yml
sed -i s/xxxx/$k8s_token/g /home/dereck/Documents/work/ansible-playbooks/ansible-kubernetes/playbooks/node.yml
