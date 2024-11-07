#!/bin/bash
<< task
   creating a new volume and attaching to this ec2 
   and mounting by using linux command
task


creating-newvolume(){

disk=$(df -h | head -5 | tail -1 | awk '{print $5}'| awk '{gsub(/%/," ");print $0}')
if [ $disk -le  25 ]
then
	echo "usage is less than 25"
	exit 1
else
	echo " **** Creating a new volume **** "
        aws ec2 create-volume \
    --availability-zone eu-north-1b \
    --size 20 \
    --volume-type gp2
fi

}

attaching-newvolume(){

read -p "Enter your new volume Id: " volid
read -p "Enter your Instance Id: " insid
read -p "Enter your Device name: " devname
aws ec2 attach-volume \
    --volume-id $volid \
    --instance-id $insid \
    --device $devname

}

mounting-vol(){
read -p "Enter file system on Volume: " devtwo
df -h
lsblk
file -s $devtwo
mkfs -t xfs $devtwo
mkdir -p /apps/my-data/apps/volume/new-volume
cd /apps/my-data/
mount /dev/xvdf /apps/my-data/apps/volume/new-volume

}

#error handing

if ! creating-newvolume; then
        echo "problem in creating a volume"
	exit 1
fi

if ! attaching-newvolume; then
	echo " Problem in attaching a volume"
	exit 1
fi

if ! mounting-vol; then
	echo " Problem in mounting the volume"
	exit 1
fi

echo " **** New Volume Created **** "
