curl https://raw.githubusercontent.com/K-shir0/kubernetes-initialize-shell/main/containerd-init.sh | sudo sh
curl https://raw.githubusercontent.com/K-shir0/kubernetes-initialize-shell/main/containerd-install.sh | sudo sh 
##ここでエンターを一度打つ必要がある
curl https://raw.githubusercontent.com/K-shir0/kubernetes-initialize-shell/main/kube-install.sh | sudo sh 
sudo sed -i -e ' s/SystemdCgroup = false/SystemdCgroup = true/'  /etc/containerd/config.toml
sudo apt remove lvm2 -y 
sudo apt autoremove -y


#実行できなかったらこっち
# git clone https://github.com/K-shir0/kubernetes-initialize-shell.git
# cd kubernetes-initialize-shell
# chmod +x *
# sudo ./containerd-init.sh
# sudo ./containerd-install.sh ##ここでエンターを一度打つ必要がある
# sudo ./kube-install.sh
# sudo sed -i -e ' s/SystemdCgroup = false/SystemdCgroup = true/'  /etc/containerd/config.toml
# sudo apt remove lvm2 -y 
# sudo apt autoremove -y 
