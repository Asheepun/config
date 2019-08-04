drive=$(ls /dev | grep "sdb[0-9]" | dmenu)

sudo mkdir -v /media/asheepun/backup-drive

sudo mount -v /dev/$drive /media/asheepun/backup-drive

sudo tar czfv /home/tmp-backup.tar.gz /home/asheepun/

sudo mv -v /home/tmp-backup.tar.gz "/media/asheepun/backup-drive/$(date +%Y-%m-%d).tar.gz"
