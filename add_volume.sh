#!/bin/bash
namedir="/srv/gitlab"
sudo groupadd docker
sudo usermod -aG docker $USER
sudo mkdir -p $namedir
sudo chmod g+rw $namedir
sudo chgrp docker $namedir
export GITLAB_HOME=$namedir
ls -la $namedir
