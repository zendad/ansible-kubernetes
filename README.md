# Ansible Kubernetes Playbook

This is an Ansible playbook that deploys a Kubernetes cluster using *kubeadm*.

### Token generation
In order to get running Kubernetes master and get nodes joined into the master you will need a __token__ in this playbook you can generate a token by your own by running _generate_token.sh_ shell script:

~~~~
$ ./generate_token.sh
~~~~

### Running tests

### Running using ansible-playbook command line

There is a `ansible.cfg` file already pointing to `hosts.ini` as Inventory, all you need to run is:

~~~~
ansible-playbook  playbooks/site.yml

## TODO

- Run Docker under docker group for security purposes
