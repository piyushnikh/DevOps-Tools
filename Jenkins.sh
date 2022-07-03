# Install JRE/JDK :-

sudo apt install openjdk-11-jdk -y
java -version
sudo apt install default-jre -y

# Install Jenkins :-

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins

# Start Jenkins :- 
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins

# Additionally, add the port 8080
sudo apt install firewalld
firewall-cmd --add-port=8080/tcp --permanent
firewall-cmd --reload
