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

Once the playbook has been run there are still a few things that need to be done manually

Reload tmux config: press ```Ctrl``` and ```space```, let go then press ```I```.
