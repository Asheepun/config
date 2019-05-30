sudo mkdir -v /media/asheepun/backup-drive

sudo mount -v /dev/sdb1 /media/asheepun/backup-drive

sudo mkdir /home/

sudo tar czfv /home/tmp-backup.tar.gz /home/asheepun/

sudo mv -v /home/tmp-backup.tar.gz "/media/asheepun/backup-drive/$(date +%Y-%m-%d).tar.gz"
