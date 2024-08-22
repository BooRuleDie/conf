# Linux Start-Up

### Create User (run as root)
```bash
adduser booruledie 
usermod -aG sudo booruledie
su - booruledie
```

### Update & Upgrade System
```bash
sudo apt update
sudo apt upgrade -y 
sudo apt install zsh git curl wget -y
```

# Tools & Services

### Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

Open the `~/.zshrc` and change `plugins(git)` to `plugins=(git zsh-autosuggestions zsh-syntax-highlighting)`

### SSH

* Go back to your main machine and copy your public key
	* If you don't have you can create a new one by using this command: `ssh-keygen -t ed25519 -C "your_email@example.com"`
* Login to the VPS and paste the public key content inside the **`~/.ssh/authorized_keys`** file

### BTOP

* Go to this [link](https://github.com/aristocratos/btop)
* Install the os-regarding release 
* Copy the binary in one of the paths mentioned in the `echo $PATH` result.
	* `sudo cp ./btop /usr/local/bin`

### Docker

* Go to [this](https://docs.docker.com/engine/install/ubuntu/#installation-methods) site and follow along with the instructions.
* Add current use to the docker group:
```bash
sudo usermod -aG docker booruledie
```
* Go to lazydocker by this [link](https://github.com/jesseduffield/lazydocker)
* Install the regarding release
* Copy the binary in one of the paths mentioned in the `echo $PATH` result.
	* `sudo cp ./btop /usr/local/bin`

### NGINX

```bash
sudo apt install nginx
sudo systemctl status nginx # check status
```

