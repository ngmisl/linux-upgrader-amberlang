#!/usr/bin/env bash
# Written in [Amber](https://amber-lang.com/)
# version: 0.3.4-alpha
# date: 2024-07-25 11:23:18


     sudo -v ;
    __AS=$?;
if [ $__AS != 0 ]; then

exit $__AS
fi
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
     brew upgrade ;
    __AS=$?;
if [ $__AS != 0 ]; then

exit $__AS
fi
     bun upgrade ;
    __AS=$?;
if [ $__AS != 0 ]; then

exit $__AS
fi
     pipx upgrade-all ;
    __AS=$?;
if [ $__AS != 0 ]; then

exit $__AS
fi