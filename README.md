# display_blocker
Программное обеспечение для органичение доступа с помощью USB-ключа доступа.

## Установка
```
cd ~
git clone https://github.com/Z-Bolt/display_blocker
cd display_blocker
sudo chmod 777 install.sh
./install.sh
```

После установки необходимо перезагрузить принтер командой:
```
sudo reboot
```

## Использование и настройка
### Все действия выполняются после установки!
Подключаем USB-флешку к принтеру.
Проверяем определение флешки системой с помощью команды:
```
lsusb
```
Находим в списке флешку и копируем Vendor ID:



Открываем файл правил udev командой:
```
sudo nano /etc/udev/rules.d/80-usb.rules
```
В нем меняем значение атрибута idVendor на тот, что получили в пунке выше:

Сохраняем и выходим:
```
Ctrl+S
Ctrl+X
```
