#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install -y python3-pip
sudo pip install flask
echo "#!/bin/bash" |sudo tee -a /etc/rc.local
echo "cd /home/ubuntu" |sudo tee -a /etc/rc.local
echo "sudo nohup /usr/local/bin/flask run --host=0.0.0.0 --port 80 > log.txt 2>&1 &" |sudo tee -a /etc/rc.local
sudo chmod a+x /etc/rc.local
