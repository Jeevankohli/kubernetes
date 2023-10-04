curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
aws s3 mb s3://jmkops.in.k8s --region us-west-1
vim .bashrc
source ~/.bashrc
ssh-keygen
kops create cluster --state=${KOPS_STATE_STORE} --node-count=2 --master-size=t3.large --node-size=t3.large --zones=us-west-1b --name=${KOPS_CLUSTER_NAME} --dns private --master-count 1
kops update cluster --yes --admin 
kops validate cluster
kubectl getnodes
kubectl get nodes
vim pod-definition1.yaml
kubectl apply -f pod-definition1.yaml
vim pod-definition1.yaml
kubectl apply -f pod-definition1.yaml
kubectl get pods
kubectl get pods -o wide
vim pod2.yaml
kubectl apply -f pod2.yaml
kubectl get pods
vim pod3.yaml
kubectl apply -f pod3.yaml
vim pod3.yaml
kubectl apply -f pod3.yaml
get pods
kubectl get pods
kubectl get nodes
ls
vim namespace.yaml
kubectl apply -f namespace.yaml
kubectl get namespace
kubectl get pods
ls
vim deamonset.yaml
ls
kubectl get pods -n namespace
kubectl get pods -n test-ns
lss
kubectl get namespace
kubectl get nodes
ls
kubectl get nodes
kops update cluster --yes --admin
kubectl get nodes
kubectl get namespace
kubectl get pods -n test-ns
vim rc.yaml
