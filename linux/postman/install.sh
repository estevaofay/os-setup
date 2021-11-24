#!/bin/bash

sudo tar -xf Downloads/Postman-linux-x86_64-9.1.5.tar.gz -C /opt/

cat << EOF >> Postman.desktop
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=/opt/Postman/app/Postman %U
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOF

mv Postman.desktop ~/.local/share/applications/Postman.desktop