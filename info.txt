install virtual box guest addons:
    https://linuxconfig.org/virtualbox-install-guest-additions-on-ubuntu-20-04-lts-focal-fossa

PS1 reference:
    https://askubuntu.com/questions/404341/where-can-i-find-a-complete-reference-for-the-ps1-variable

default PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$'
custom PS1='\[\e]0;\u@\h:\w\a\]\[\033[0m\]\[\033[94m\]<\t \d> \[\033[92m\]\u\[\033[0m\]:\[\033[1;33m\]\w\[\033[0m\]\[\033[0m\]\n\$ '