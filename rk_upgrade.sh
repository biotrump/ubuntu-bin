#!/bin/bash
#press "recovery key and reset key" to enter recovery mode
# update kernel :  sudo upgrade_tool di -k kernel.img
# update resource : sudo upgrade_tool di resource resource.img
#sudo upgrade_tool di -s system.img
#sudo upgrade_tool di -r recovery.img
#  sudo upgrade_tool di -m misc.img
#  sudo upgrade_tool di -k kernel.img
#   sudo upgrade_tool di resource resource.img
#  sudo upgrade_tool di uboot uboot.img
#  sudo upgrade_tool di -p paramater   #烧写 parameter
#  sudo upgrade_tool ul bootloader.bin # 烧写 bootloader
#  sudo upgrade_tool uf update.img

sudo ~/bin/upgrade_tool $1 $2 $3 $4 $5
