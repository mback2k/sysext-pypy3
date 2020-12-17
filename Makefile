build: torcx.tgz torcx.squashfs


pypy.tar.bz2:
	wget -q https://downloads.python.org/pypy/pypy3.6-v7.3.3-linux64.tar.bz2 -O pypy.tar.bz2

pypy: pypy.tar.bz2
	tar -xjf pypy.tar.bz2


torcx: pypy
	cp -ar pypy*/* rootfs/

torcx.tgz: torcx
	tar -C rootfs -czf torcx.tgz .

torcx.squashfs: torcx
	mksquashfs rootfs torcx.squashfs
