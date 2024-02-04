build: sysext.raw


pypy3.tar.bz2:
	wget -q https://downloads.python.org/pypy/pypy3.10-v7.3.15-linux64.tar.bz2 -O pypy3.tar.bz2

pypy3: pypy3.tar.bz2
	tar -xjf pypy3.tar.bz2


sysext: pypy3
	mkdir -p rootfs/usr
	cp -ar pypy3*/* rootfs/usr/

sysext.raw: sysext
	mksquashfs rootfs sysext.raw -all-root
