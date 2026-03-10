# Debian 13 Workstation Setup

Ansible playbook to configure a Debian 13 (Trixie) desktop workstation from a minimal install.

## What's included

| Role | Description |
|------|-------------|
| system | Timezone, locale, unattended-upgrades |
| base | Core packages (git, curl, build-essential, etc.) |
| display | Xorg, LightDM, PipeWire, Bluetooth, NetworkManager |
| ufw | Firewall (deny incoming, allow outgoing + SSH) |
| ssh | Generate ed25519 SSH keypair |
| git | Git config (name, email, editor, default branch) |
| zsh | Zsh, Oh My Zsh, plugins, aliases |
| fonts | MesloLGS Nerd Font |
| python | Python3, pipx, uv, black, ruff, mypy, pytest |
| terminal | Kitty, fzf, bat, eza, ripgrep, tldr, lazydocker |
| docker | Docker CE, Compose, Buildx |
| nodejs | Node.js 22 LTS |
| vscode | Visual Studio Code |
| brave | Brave browser |
| kubernetes | kubectl |
| desktop | VLC, GIMP, LibreOffice, Postman, Telegram |
| productivity | Flameshot, CopyQ, Nemo |
| monitoring | btop, ncdu, duf |
| security | KeePassXC, WireGuard, Timeshift |
| i3 | i3 window manager, i3blocks, rofi, picom, dunst |
| dotfiles | Kitty config, .zshrc |

## Fresh install instructions

### 1. Add your user to sudo group

```bash
su -
usermod -aG sudo yourusername
exit
```

Log out and back in completely.

### 2. Install ansible and git

```bash
sudo apt update
sudo apt install -y ansible git
```

### 3. Clone and configure

```bash
git clone https://github.com/kostadinov92/ansible.git ~/ansible
cd ~/ansible
```

Edit `group_vars/local.yml` with your details:

```yaml
user_name: "Your Name"
user_email: "your@email.com"
timezone: "Your/Timezone"
```

### 4. Install ansible collections

```bash
ansible-galaxy collection install -r requirements.yml
```

### 5. Run the playbook

```bash
ansible-playbook -i inventory playbook.yml -K
```

### 6. After the playbook finishes

- Log out and back in for zsh and docker group to take effect
- At the login screen, select **i3** to use the tiling window manager
- Add your SSH key to GitHub: `cat ~/.ssh/id_ed25519.pub`

## Usage

```bash
# Run everything
ansible-playbook -i inventory playbook.yml -K

# Run specific roles
ansible-playbook -i inventory playbook.yml -K --tags "base,docker,i3"

# Dry run
ansible-playbook -i inventory playbook.yml -K --check
```
