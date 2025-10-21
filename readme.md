# Romala
a key layout covering special characters in the romance languages (spanish, french, portuguese, italian, etc)

The layout goes in the following directory:
```
/usr/share/X11/xkb/symbols
```

Don't forget to add the layout after the `! layout` line in the following files:
```
/usr/share/X11/xkb/rules/base.lst
/usr/share/X11/xkb/rules/evdev.lst
```

And add the following snippet:

```xml
<layout>
    <configItem>
    <name>romala</name>
    <shortDescription>romala</shortDescription>
    <description>Romala</description>
    <languageList>
        <iso639Id>eng</iso639Id>
    </languageList>
    </configItem>
</layout>
```

In the following files:
```
/usr/share/X11/xkb/rules/base.xml
/usr/share/X11/xkb/rules/evdev.xml
```