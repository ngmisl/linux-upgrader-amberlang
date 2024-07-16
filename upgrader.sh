#!/usr/bin/env bash
# Written in [Amber](https://amber-lang.com/)
# version: 0.3.4-alpha
# date: 2024-07-16 09:21:23
function exit__26_v0 {
    local code=$1
    exit "${code}";
    __AS=$?
}

     exec > >(tee -a /var/log/autoapt.log) 2>&1 ;
    __AS=$?;
if [ $__AS != 0 ]; then

exit $__AS
fi
     date ;
    __AS=$?;
if [ $__AS != 0 ]; then

exit $__AS
fi
     iwgetid -r | grep -E '(OEBB|WESTlan)'  > /dev/null 2>&1;
    __AS=$?
    if [ $(echo $__AS '==' 0 | bc -l | sed '/\./ s/\.\{0,1\}0\{1,\}$//') != 0 ]; then
        echo "Skipping updates because of slow Wifi"
        exit__26_v0 0;
        __AF_exit26_v0__14_5=$__AF_exit26_v0;
        echo $__AF_exit26_v0__14_5 > /dev/null 2>&1
fi
     export DEBIAN_FRONTEND=noninteractive ;
    __AS=$?;
if [ $__AS != 0 ]; then

exit $__AS
fi
     apt update ;
    __AS=$?;
if [ $__AS != 0 ]; then

exit $__AS
fi
     yes '' | apt upgrade ;
    __AS=$?;
if [ $__AS != 0 ]; then

exit $__AS
fi
     apt autoremove -y ;
    __AS=$?;
if [ $__AS != 0 ]; then

exit $__AS
fi
     snap refresh --color=never --unicode=never ;
    __AS=$?;
if [ $__AS != 0 ]; then

exit $__AS
fi
     flatpak update -y ;
    __AS=$?;
if [ $__AS != 0 ]; then

exit $__AS
fi
     bun upgrade ;
    __AS=$?;
if [ $__AS != 0 ]; then

exit $__AS
fi
     rustup update ;
    __AS=$?;
if [ $__AS != 0 ]; then

exit $__AS
fi
     cargo install-update -a ;
    __AS=$?;
if [ $__AS != 0 ]; then

exit $__AS
fi