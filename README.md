# Setup

Steps to install and ensure automatic updates using systemd-sysupdate:

```
curl -L https://github.com/mback2k/sysext-pypy3/releases/latest/download/sysupdate-noop.conf --create-dirs -o /etc/sysupdate.d/noop.conf
curl -L https://github.com/mback2k/sysext-pypy3/releases/latest/download/sysupdate-pypy3.conf --create-dirs -o /etc/sysupdate.pypy3.d/pypy3.conf
curl -L https://github.com/mback2k/sysext-pypy3/releases/latest/download/systemd-pypy3.conf --create-dirs -o /etc/systemd/system/systemd-sysupdate.service.d/pypy3.conf
curl -L https://github.com/mback2k/sysext-pypy3/releases/latest/download/systemd-sysext.conf --create-dirs -o /etc/systemd/system/systemd-sysupdate.service.d/sysext.conf
systemctl daemon-reload
systemctl enable systemd-sysupdate.timer
systemctl start systemd-sysupdate.service
```
