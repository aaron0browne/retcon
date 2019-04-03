# Use

## OSX

```bash
xcode-select --install
sudo easy_install pip
sudo pip install ansible
ansible-galaxy install geerlingguy.homebrew
ansible-playbook main.yml -i hosts -K
```

- Update apps in the AppStore
- Sync Visual Studio Code settings using the sync extension, the token stored in the password store, and the `26ab34bdf52f9661f4aab3addfd977bb` gist.
- Set iTerm preferences to load from `~/.iterm2` directory.
- Register iStat Menus using key for email
- Install SkedPal from <https://www.skedpal.com/download/>
- Use System Preferences to:
  - Remap CapsLock to Escape.
  - Change my avatar.
  - Configure Spectacle, Flux, iTerm to start on login.

## Archlinux

```bash
pacman -S ansible
ansible-playbook main.yml -i hosts.ini -K --extra-vars "ansible_python_interpreter=/usr/bin/python2"
```
