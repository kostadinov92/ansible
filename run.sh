#!/bin/sh
# Wrapper script to run the ansible playbook.
# Temporarily switches to classic sudo on Ubuntu 25.10+ where sudo-rs
# breaks Ansible's become plugin (https://github.com/ansible/ansible/issues/85837)

set -e

SWITCH_BACK=false

# Check if sudo-rs is the active sudo implementation
if command -v sudo.ws >/dev/null 2>&1 && sudo --version 2>&1 | grep -q "sudo-rs"; then
    echo "Switching to classic sudo (sudo-rs is incompatible with Ansible)..."
    sudo update-alternatives --set sudo /usr/bin/sudo.ws
    SWITCH_BACK=true
fi

ansible-playbook playbook.yml -K "$@"
EXIT_CODE=$?

if [ "$SWITCH_BACK" = true ]; then
    echo "Switching back to sudo-rs..."
    sudo update-alternatives --set sudo /usr/lib/cargo/bin/sudo
fi

exit $EXIT_CODE
