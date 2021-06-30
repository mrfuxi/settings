# How to adjust XPS keyboard

Works fine for Xorg and I think partially for Wayland (not all application).

## Home/End

Source: https://askubuntu.com/a/1305020/224204

Actions to do as ROOT

To `/usr/share/X11/xkb/rules/evdev` add section from `evdev`.
To `/usr/share/X11/xkb/rules/evdev.xml` add section from `evdev.xml`.
To `/usr/share/X11/xkb/rules/evdev.lst` add section from `evdev.lst`.
Copy `xps_mod` as `/usr/share/X11/xkb/symbols/xps_mod`.

Go to `Gnome Tweaks`-> `Keyboard & Mouse` -> `Addtional Layout Options` -> `XPS keyboard patch`. Tick both options.
