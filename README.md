## Colemak за българката азбука

![preview bulgarian colemak](preview.png)

## Инсталиране в Линукс

Изпълнете последователно всяка една от следните команди:

```fish
git clone --depth=1 https://github.com/salif/xkc-installer /tmp/xkc-installer
git clone --depth=1 https://github.com/salif/colemak-bg /tmp/colemak-bg
sudo EDITOR="${EDITOR:-nano}" /tmp/xkc-installer/installer.bash /tmp/colemak-bg/linux/xkc.conf
```

След това добавете новоинсталираната клавиатурна подредба `Bulgarian (Colemak)` към вашите клавиатурни подредби от настройките на вашата графична среда.

Готово!

Ако не успеете, създайте `issue` към това хранилище.
