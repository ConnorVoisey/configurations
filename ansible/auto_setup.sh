sudo apt install git software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

git clone https://github.com/ConnorVoisey/configurations.git $HOME/configurations

cd $HOME/configurations/ansible

$HOME/configurations/ansible/run-playbook.sh
