# List of changes recorded

Thu Apr 25 01:21:10 UTC 2024
created new 300GB storage to dump linode cloud storage to local server
```
Disk /dev/sdd: 300 GiB, 322122547200 bytes, 629145600 sectors
Disk model: Volume          
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
root@hoyj:/mnt/media_storage# mount /dev/sdd /mnt/new_storage
NTFS signature is missing.
Failed to mount '/dev/sdd': Invalid argument
The device '/dev/sdd' doesn't seem to have a valid NTFS.
Maybe the wrong device is used? Or the whole disk instead of a
partition (e.g. /dev/sda, not /dev/sda1)? Or the other way around?
root@hoyj:/mnt/media_storage# mkfs.ext4 /dev/sdd 
mke2fs 1.45.5 (07-Jan-2020)
Discarding device blocks: done                            
Creating filesystem with 78643200 4k blocks and 19660800 inodes
Filesystem UUID: 3126e9b1-ace2-409b-add7-6ac29f1fd6d8
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208, 
	4096000, 7962624, 11239424, 20480000, 23887872, 71663616

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (262144 blocks): done
Writing superblocks and filesystem accounting information: done     

root@hoyj:/mnt/media_storage# mount /dev/sdd /mnt/new_storage
root@hoyj:/mnt/media_storage# cd /mnt/new_storage/
root@hoyj:/mnt/new_storage# df -h . 
Filesystem      Size  Used Avail Use% Mounted on
/dev/sdd        295G   28K  280G   1% /mnt/new_storage
root@hoyj:/mnt/new_storage# date 
Thu Apr 25 01:21:10 UTC 2024
root@hoyj:/mnt/new_storage# 

```

- finished script to download everything from objevt storage
```bash
  hoyj:~/github/hoyj/move_off_cloud$ ./download_all_from_cloud.sh
```