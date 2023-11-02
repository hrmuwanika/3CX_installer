# 3CX installer
Repository hosting script for installing 3CX on clean Debian system without the need to use 3CX ISO, also you can find misc script for errors and upgrade.

`git clone` require git package installed on your system, please check if you have it before continuing.

## Features
- Install 3CX on clean Debian
- Version selection (Usefull for backup/restore) 

## Debian 12 (bookworm) TESTING
``` 
git clone https://github.com/hrmuwanika/3CX_installer
cd 3CXinstaller
chmod +x 3cx_debian12_installer.sh
./3cx_debian12_installer.sh
```

## MISC

### Fix error libfreeimage3 while upgrading from v16 to v18
``` 
chmod +x install_libfreeimage3.sh
./libfreeimage3
```

### Upgrade from v16 to v18
``` 
chmod +x upgrade.sh
./upgrade
```

### Direct deb packet (18.0.5.418):
http://repo.3cx.com/3cx/pool/main/3/3cxpbx/3cxpbx_18.0.5.418-deb11_amd64.deb
