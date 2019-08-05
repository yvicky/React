# Step 0:

Terraform an new EC2 instance:
1. https://pragmacoders.com/blog/creating-an-ec2-instance-with-terraform

# Step 1:

Set up Jenkins or CircleCI to run Ansible, which then sets up Kuberenetis.

# Step 2:

Set-up Cluster to include new EC2 node and its pods via Kubernetis and Kubeadm:
1. https://www.cloudtechnologyexperts.com/kubeadm-on-aws/
2. https://www.patricia-anong.com/blog/2018/8/kubernetes-in-aws-using-kops

# Step 3:

React app in AWS EC2, Provisioned by Kuberentis ( Kubeadm agent )
get code in the ec2 machine after ssh'ing in:
1. SSH: ```ssh -i ~/<file name>.pem ubuntu@<public or private ip>```
2. GIT: ```git clone <>```
3. NPM #1: ```sudo npm install```
4. NPM #2: ```npm install node-sass```
5. NPM #3: ```npm start / npm build run```

## Issues?

You might want to update yarn dependecies by doing ```sudo yarn upgrade caniuse-lite browserslist```

# Step 4:

Add new Pod / Node to Cluster:
```kubeadm join <private ip>:6443 --token <token> --discovery-token-ca-cert-hash <hash>```
    
## Issues?

If cannot join the cluster, do ```kubeadm token create --print-join-command```

# Step 5:

Dashboarding: https://github.com/kubernetes/dashboard

Steps:
1. enable tcp port 8443 in AWS or any other provider
2. create new pods via installation comamnds, found in latest version from https://github.com/kubernetes/dashboard/releases

## Issues?

If stuck with ClusterCreating, kill the beast of nodes and pods by doing ```kubectl drain <node name> --ignore-daemonsets --delete-local-data```
