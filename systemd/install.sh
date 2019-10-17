#!/bin/sh

script_path=`readlink -f $0`
script_dir=`dirname $script_path`

cd $script_dir

sudo -s <<EOF
cp system/disable-usb-wakeup.service /etc/systemd/system/
systemctl start disable-usb-wakeup.service
systemctl enable disable-usb-wakeup.service
EOF
