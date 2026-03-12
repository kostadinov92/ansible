# Ubuntu Workstation Setup

Ansible playbook to configure an Ubuntu workstation from a minimal/server install. Also works on Ubuntu Desktop.

## What's included

| Role | Description |
|------|-------------|
| system | Timezone, locale, unattended-upgrades |
| base | Core packages (git, curl, build-essential, etc.) |
| display | Xorg, LightDM, PipeWire, Bluetooth, NetworkManager (auto-detects Server vs Desktop) |
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

### 1. Install ansible and git

```bash
sudo apt update
sudo apt install -y ansible git
```

### 2. Clone and configure

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

### 3. Install ansible collections

```bash
ansible-galaxy collection install -r requirements.yml
```

### 4. Run the playbook

```bash
sudo ansible-playbook playbook.yml
```

> **Note:** Running with `sudo` is recommended due to a [known incompatibility](https://github.com/ansible/ansible/issues/85837)
> between Ansible and `sudo-rs` (the default on Ubuntu 25.10+). This avoids the become password prompt entirely.

### 5. After the playbook finishes

- Log out and back in for zsh and docker group to take effect
- At the login screen, select **i3** to use the tiling window manager
- Add your SSH key to GitHub: `cat ~/.ssh/id_ed25519.pub`

## Usage

```bash
# Run everything
sudo ansible-playbook playbook.yml

# Run specific roles
sudo ansible-playbook playbook.yml --tags "base,docker,i3"

# Dry run
sudo ansible-playbook playbook.yml --check

# With diff output
sudo ansible-playbook playbook.yml --diff
```
