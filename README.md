# configurations

A collection of configuration files and personalisation instructions for ubuntu.

## git

```sh
sudo apt-get install git
```

```sh
sudo apt-get install gh
```

## node

NVM for node versions

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```

pnpm

```sh
npm install -g pnpm
```

vs code

```sh
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code
```

## Other

```sh
sudo apt-get install bat
```

```sh
sudo apt install exa
```

starship

```sh
sudo apt-get install curl
curl -sS https://starship.rs/install.sh | sh
```

```sh
sudo apt-get install ripgrep
```

## Cast to screen

```sh
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```

restart session

```sh
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gnome.NetworkDisplays

sudo apt install pavucontrol
```
