script0='echo "script0"';
script1='echo "script1"';

sshpass -p Welcome1 ssh -o StrictHostKeyChecking=no root@192.168.0.210 $script0 $script1;



