# -------------------
# Install Docker
# -------------------
apt install apt-transport-https ca-certificates curl software-properties-common gnupg
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt install docker-ce
usermod -aG docker $USER

systemctl start docker
systemctl enable docker

curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose


# -------------------
# Setup Firewall
# -------------------

apt-get install ufw




# -------------------
# Setup Directories
# -------------------

mkdir /apps


# -------------------
# Execute
# -------------------

docker-compose up -d
