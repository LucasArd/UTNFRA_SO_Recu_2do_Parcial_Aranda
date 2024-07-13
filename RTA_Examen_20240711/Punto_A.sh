   19  sudo fdisk -l
   20  sudo fdisk /dev/sdc
   21  sudo mkswap /dev/sdc1
   22  sudo swapon /dev/sdc1
   23  free -h
   24  sudo fdisk /dev/sdc
   25  sudo pvcreate /dev/sdc2
   26  sudo vgcreate vg_temp /dev/sdc2
   27  sudo lvcreate -L +2G vg_temp -n lv_swap
   28  sudo lvs
   29  sudo vgs
   30  sudo mkswap /dev/mapper/vg_temp-lv_swap
   31  sudo mkswapon /dev/mapper/vg_temp-lv_swap
   32  sudo swapon /dev/mapper/vg_temp-lv_swap
   33  lsblk -f
   34  sudo fdisk /dev/sdd
   35  sudo fdisk /dev/sde
   36  sudo fdisk -l
   37  sudo pvcreate /dev/sdd1 /dev/sde1 /dev/sde5
   38  sudo vgcreate vg_datos /dev/sdd1 /dev/sde1 /dev/sde5
   39  sudo vgs
   40  sudo lvcreate -L +10M vg_datos -n lv_docker
   41  sudo lvcreate -l +100%FREE vg_datos -n lv_multimedia
   42  sudo vgs
   43  sudo lvs
   44  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia
   45  sudo mkdir /Multimedia
   46  sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia
   47  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
   48  sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
   49  sudo usermod -a -G docker laranda
   50  sudo systemctl restart docker
   51  sudo fdisk /dev/sde
   52  sudo pvcreate /dev/sde6
   53  sudo vgextend vg_datos /dev/sde6
   54  sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
   55  sudo resize2fs /dev/mapper/vg_datos-lv_docker
