# raspberry pi

## fan control
* `raspi-config` settings are passed to file `sudo vim /boot/firmware/config.txt` so it can be edited manually.
* Search for line `dtoverlay=gpio-fan,gpiopin=14,temp=50000` adjust gpio pin and temperature accordingly.
* View gpio pin status `raspi-gpio get 14` deprecated, use instead `pinctrl get 14`
* View temperature `vcgencmd measure_temp`
* To monitor continuously `watch -n 1 <command>` that will print the commands output every 1 second i.e.: `watch -n 1 vcgencmd measure_temp` `watch -n 1 pinctrl get 14`