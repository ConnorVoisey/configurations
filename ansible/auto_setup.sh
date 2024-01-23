sudo apt install git software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

wget -qO - 'https://proget.makedeb.org/debian-feeds/prebuilt-mpr.pub' | gpg --dearmor | sudo tee /usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg 1> /dev/null
echo "deb [arch=all,$(dpkg --print-architecture) signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg] https://proget.makedeb.org prebuilt-mpr $(lsb_release -cs)" | sudo tee /etc/apt/sources.list.d/prebuilt-mpr.list
sudo apt update -y
sudo apt install just -y

git clone https://github.com/ConnorVoisey/configurations.git $HOME/configurations

cd $HOME/configurations/ansible
cp .env.example .env

echo "\n\n"
echo "**********************************************"
echo "** Setup complete                           **"
echo "**                                          **"
echo "** edit the .env file with your preferences **"
echo "**********************************************"
echo "\nYou can run the setup with:"
echo "just setup"

