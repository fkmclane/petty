petty
=====

petty, short for practically enhanced tty, is a tty session manager for Linux.


Features
--------

* support for any shell or script that can be executed
* provided xsession script that will set up X11 (with magic cookies!) and run a corresponding xsession script


Installing
----------

```
# make install
```


Configuring
-----------

Sessions can be added by putting an executable (whether link, binary, or script) in `/etc/sessions` for system-wide configuration, or `$XDG_CONFIG_HOME/sessions` for individual user configuration. X11 sessions must have a link to `$PREFIX/sessions/xsession` and a corresponding xsession file of the same name in `/etc/xsessions` or `/etc/X11/Sessions` for system-wide configuration or `$XDG_CONFIG_HOME/xsessions` for individual user configuration.

User configurations are in the `$XDG_CONFIG_HOME/petty/pettyrc` file which should look soemthing like this:

```sh
shell=zsh # the session that gets run for any terminal window, ssh, and unspecified vts

session1=bspwm # the session that gets run when logged in on vt 1
session2=steam # the session that gets run when logged in on vt 2
```

Make sure to set petty as your shell as well:

```
$ chsh -s petty
```
