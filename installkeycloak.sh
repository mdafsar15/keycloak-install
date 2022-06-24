script0='curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl";
         curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256";
	 echo "$(cat kubectl.sha256) kubectl" | sha256sum --check;
         sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl -y;
         kubectl version --client;';

sshpass -p Welcome1 ssh -o StrictHostKeyChecking=no root@192.168.0.210 $script0;



