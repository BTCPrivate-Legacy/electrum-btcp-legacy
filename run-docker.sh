#!/bin/bash
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
DATADIR=.electrum-btcp
LEDGER_USB_ID='2c97:0001'
xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

if lsusb -d $LEDGER_USB_ID > /dev/null; then
  BUS=$(lsusb -d 2c97:0001 | cut -d' ' -f 2)
  DEVICE=$(lsusb -d 2c97:0001 | cut -d' ' -f 4 | tr -d ':')
  DOCKER_DEVICE="--device /dev/bus/usb/$BUS/$DEVICE"
fi

docker run -ti -v $HOME/$DATADIR:/root/$DATADIR -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH  $DOCKER_DEVICE electrum-btcp:latest
