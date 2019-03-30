## Use

### OSX

```
xcode-select --install
sudo easy_install pip
sudo pip install ansible
ansible-galaxy install geerlingguy.homebrew
ansible-playbook main.yml -i hosts -K
```

### Archlinux

```
pacman -S ansible
ansible-playbook main.yml -i hosts.ini -K --extra-vars "ansible_python_interpreter=/usr/bin/python2"
```
