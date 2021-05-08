## Bulgarian Colemak

![preview bulgarian colemak](preview.png)

## Install on Linux

Run:

```fish
git clone --depth=1 https://github.com/salif/xkc-installer /tmp/xkc-installer
git clone --depth=1 https://github.com/salif/colemak-bg /tmp/colemak-bg
sudo EDITOR="${EDITOR:-nano}" /tmp/xkc-installer/installer.bash /tmp/colemak-bg/linux/xkc.conf
```

Then add `Bulgarian (Colemak)` via your desktop environment's settings.

If it doesn't work then create an issue on this repository
