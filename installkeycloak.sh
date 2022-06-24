script0='curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl";';

sshpass -p Welcome1 ssh -o StrictHostKeyChecking=no root@192.168.0.210 $script0;



