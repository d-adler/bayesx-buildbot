# BayesX Buildbot Vagrant Environment

# Machines

- Fedora
- Debian
- Windows
- Solaris

# Getting Started

~~~
vagrant ssh master
~~~

Then, visit http://master.bb:8010/

# Notes

## Windows

# Troubleshooting

## Master does not start

~~~
export LC_CTYPE=en_EN.UTF-8
~~~

## Locale Problems (Buildbot)

~~~
perl: warning: Setting locale failed.
perl: warning: Please check that your locale settings:
        LANGUAGE = (unset),
        LC_ALL = (unset),
        LC_CTYPE = "UTF-8",
        LANG = "en_US.UTF-8"
    are supported and installed on your system.
perl: warning: Falling back to a fallback locale ("en_US.UTF-8").
~~~

Check sshd_config and disable passing LANG, LC_* vars etc..

~~~
# AcceptEnv LANG LC_*
~~~
