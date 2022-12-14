# More of a list of commands to run, not for execution.

    lvremove /dev/pve/data
    lvresize -l +100%FREE /dev/pve/root
    resize2fs /dev/mapper/pve-root
    apt-get install -y parted
    
# And then in parted.... after figuring out which disk with something like "parted -l"

    parted /dev/[diskid]
    mkpart primary ext4 [next available space] [end of disk]
    
# Finally, go into proxmox, recreate the LVM-Thinpool in whatever spot you want it.
