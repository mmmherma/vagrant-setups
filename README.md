# vagrant_setups

Vagrant setups for testing purpose.

## ansible_lab

Set an Ansible working lab to test simple playbooks. Defines 3 virtual machines (VM) based on CentOD 7: target0, target1 and target2.
Those machines runs on VirtualBox. To perform SSH access /etc/sshd_config modification is needed: PasswordAuthentication yes.

## docker

Set a CentOS 7 VM with Docker and Ansible installation. Thus, Ansible tests over Docker containers can be performed.
