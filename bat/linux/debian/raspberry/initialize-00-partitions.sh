#!/bin/bash

SUDO=sudo

lsblk
$SUDO fdisk -l

DATA_PARTITION=/dev/mmcblk0p7
DATA_FOLDER=$HOME/data

mkdir $DATA_FOLDER

sudo mount $DATA_PARTITION $DATA_FOLDER

mount

