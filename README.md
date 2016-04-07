petty
=====

petty, short for practically enhanced tty, is a tty session starter for Linux.


Features
--------

* support for any shell (e.g. `zsh`) or script (e.g. `startxfce4`) that can be executed
* provided xsession script that will set up X11 (with magic cookies!) and run a corresponding xsession script in the session


Installing
----------

```
# make install
```


Configuring
-----------

Sessions can be added by putting an executable (can be a link, binary, script, etc.) in `/etc/sessions` for system-wide configuration or `$XDG_CONFIG_HOME/sessions` for individual user configuration.

X sessions must be a link to `/usr/local/share/sessions/xsession` and there must be a corresponding xsession file of the same name in `/etc/xsessions` or `/etc/X11/Sessions` for system-wide configuration or `$XDG_CONFIG_HOME/xsessions` for individual user configuration.

User tty configurations are in the `$XDG_CONFIG_HOME/petty/pettyrc` file which specifies a default shell and per-vt shells like this:

```sh
shell=zsh # the session that gets run for any terminal window, ssh, and unspecified vts

session1=bspwm # the session that gets run when logged in on vt 1
session2=steam # the session that gets run when logged in on vt 2
```

Make sure to set petty as the user shell as well:


```
$ chsh -s /usr/local/bin/petty
```
