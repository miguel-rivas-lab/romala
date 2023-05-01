#!/bin/bash

# layout=$(cat ./bin/new_layout)

# sed -i "1335 i $layout" ./bin/base.xml
# sed -i '/<layoutList>/c\$layout' ./bin/base.xml
# sed -i "s/<layoutList>/$layout/1" ./bin/base.xml

mv /usr/share/X11/xkb/rules/base.lst /usr/share/X11/xkb/rules/base.lst.copy
mv /usr/share/X11/xkb/rules/evdev.lst /usr/share/X11/xkb/rules/evdev.lst.copy
mv /usr/share/X11/xkb/rules/base.xml /usr/share/X11/xkb/rules/base.xml.copy
mv /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.copy

cp ./bin/base.lst /usr/share/X11/xkb/rules
cp ./bin/evdev.lst /usr/share/X11/xkb/rules
cp ./bin/base.xml /usr/share/X11/xkb/rules
cp ./bin/evdev.xml /usr/share/X11/xkb/rules
cp ./bin/romala /usr/share/X11/xkb/symbols