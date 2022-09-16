tchpc_templates/bashrc
===

In linux, the `.bashrc` file is a script file which is executed when a user logs in. The file contains a series of configurations for the terminal sessions. This can include setting up or enabling: 
- terminal colour schemes,
- tab autocompletion,
- bash aliases and functions,
- module loading, etc

There is a system-level bashrc file found at `/etc/bashrc`, but users can also add their own configurations to the hidden `.bashrc` file in their home directory.


Appending to the file
---
The default user `~/.bashrc` probably looks something like this:
```bash
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

```
Be careful not to remove the initial `if` statement which sources the global bashrc. Only add custom options below in the area of user specific aliases and functions.



Examples
===
Trivial Example
---  
Suppose you want to your terminal to warmly welcome you when you login. You can append the following line to the file:
```bash
echo "Hello $USER, I hope you're having a fabulous day."
```
Now log out and log back in to source your new `.bashrc` file. Or you can do so manually using `source ~/.bashrc`.



Currently working from
https://www.journaldev.com/41479/bashrc-file-in-linux