#!/bin/bash

set -e

##--- Vagrant Setup---

# sudo apt install virtualbox
# sudo apt update
# curl -O https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.deb
# sudo apt install ./vagrant_2.2.6_x86_64.deb

##--- Verifty Vagrant Installation---

vagrant --version

mkdir ~/demo-ops
cd ~/demo-ops

# for a basic Ubuntu 18.04 64-bit Vagrant box
vagrant init hashicorp/bionic64

vagrant up

##--- SSH into Vagrant VM---

# vagrant ssh

##--- Halt Vagrant VM---

# vagrant halt

##--- Halt Vagrant VM---

# vagrant destroy

