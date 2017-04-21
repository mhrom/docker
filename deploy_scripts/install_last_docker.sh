#1/bin/bash
docker_version=1.6.2
get_docker=https://get.docker.io/ubuntu/pool/main/l

for package in lxc-docker lxc-docker-$docker_version; do
    deb=${package}_${docker_version}_amd64.deb
    curl -s $get_docker/$package/$deb -o $deb
done
sudo apt-get install -y gdebi
sudo gdebi lxc-docker_${docker_version}_amd64.deb lxc-docker-${docker_version}_${docker_version}_amd64.deb
