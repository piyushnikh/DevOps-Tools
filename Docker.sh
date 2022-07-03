#Get the get-docker.sh script from docker.com

curl -fsSL https://get.docker.com -o get-docker.sh

#Run the script

sudo sh get-docker.sh

#Check the status of docker

sudo systemctl status docker
