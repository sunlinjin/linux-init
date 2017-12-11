#!/usr/bin/env bash

DISK="/host/_/iso/Office/Office_2016_16.0.4229.1002_x86-x64_v2.8.iso"

MOUNT_FOLDER="/media/yomun/iso"

sudo mkdir -p ${MOUNT_FOLDER}

sudo mount -o loop ${DISK} ${MOUNT_FOLDER}