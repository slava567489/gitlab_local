# gitlab_local

# install gitlab_docker_compose(version 16.0.10):

1. install Docker https://docs.docker.com/engine/install/ubuntu/
2. Run "add_volume.sh"
2. Logout after run "add_volume.sh"
4. Verify that the installation Docker is successful: "sudo docker run hello-world"
3. Run GItLab in a Docker container "docker compose up -d"

sudo docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password


