script0='curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl";
         curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256";
	 echo "$(cat kubectl.sha256) kubectl" | sha256sum --check;
         sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl;
         kubectl version --client;
	 cd;
	 mkdir .kube;
	 sshpass -p Welcome1 scp -o StrictHostKeyChecking=no root@192.168.0.217:/etc/kubernetes/admin.conf .kube/config;
	 sed -i "s/127.0.0.1/192.168.0.217/g" .kube/config;
	 kubectl get pods;';

sshpass -p Welcome1 ssh -o StrictHostKeyChecking=no root@192.168.0.210 $script0;



