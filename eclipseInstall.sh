#!/bin/bash

wget http://eclipse.stu.edu.tw/technology/epp/downloads/release/mars/R/eclipse-committers-mars-R-linux-gtk.tar.gz
tar -zxvf eclipse-committers-mars-R-linux-gtk.tar.gz


sudo mv eclipse-committers-mars-R-linux-gtk /opt

touch eclipse.desktop

cat > eclipse.desktop << END
[Desktop Entry]
Name=Eclipse
Type=Application
Exec=env UBUNTU_MENUPROXY=0 eclipse44
Terminal=false
Icon=eclipse
Comment=Integrated Development Environment
NoDIsplay=false
Categories=Development;IDE
Name[en]=Eclipse
END

sudo desktop-file-install eclipse.desktop

sudo ln -s /opt/eclipse/eclipse /usr/local/bin/eclipse44

sudo cp /opt/eclipse/icon.xpm /usr/share/pixmaps/eclipse.xpm
