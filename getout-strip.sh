# What have to be done before take my macbook from desk
# Umount external Devices before take off macbook

for DISKPATH in /dev/disk[1-9]
do
	diskutil eject $DISKPATH
done
