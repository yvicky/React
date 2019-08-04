# Step 0:

Terraform an new EC2 instance.

# Step 1:

Kubernetis and Kubeadm:
1. https://www.cloudtechnologyexperts.com/kubeadm-on-aws/
2. https://www.patricia-anong.com/blog/2018/8/kubernetes-in-aws-using-kops

# Step 2:

React app in AWS EC2, Provisioned by Kuberentis ( Kubeadm agent )
get code in the ec2 machine after ssh'ing in:
1. SSH: ssh -i ~/<>.pem ubuntu@<>
2. GIT: Git clone <>
3. NPM #1: sudo npm install
4. NPM #2: npm install node-sass
5. NPM #3: npm start / npm build run 

# Step 3:

Add new Pod / Node to Cluster:
kubeadm join 172.31.36.22:6443 --token <> \
    --discovery-token-ca-cert-hash <>

# Step 4:

Dashboarding: https://github.com/kubernetes/dashboard
