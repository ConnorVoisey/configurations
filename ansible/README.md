# ansible setup

Prerequisites

```sh
sudo apt install git software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

clone this repo

```sh
git clone https://github.com/ConnorVoisey/configurations.git
```

Run the playbook inside the configurations directory

```sh
ansible-playbook main.yml -i inventory -K
```
