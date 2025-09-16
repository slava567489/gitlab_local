# gitlab_local

install gitlab_docker_compose(version 16.0.10):
1. install Docker
2. Run "add_volume.sh" with "sudo"
2. Logout after run "add_volume.sh"
4. Verify that the installation Docker is successful: "sudo docker run hello-world"
3. Run GItLab in a Docker container "docker compose up -d"

sudo docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password


install docker:

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin