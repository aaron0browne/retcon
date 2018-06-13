## Use

### OSX

```
xcode-select --install
sudo pip install ansible
ansible-playbook main.yml -i hosts.ini -K
```

### Archlinux

```
pacman -S ansible
ansible-playbook main.yml -i hosts.ini -K --extra-vars "ansible_python_interpreter=/usr/bin/python2"
```
