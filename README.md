# LabHackers_USB2TTL8Adapter_triggerExamples
Provide working code examples of triggers for the [USB2TTL8] Adapter box using a number of programming languages and environments

`/processing/processing.pde`
Tested with Processing 4 on macOS.

`/python/labHackers.py`
Tested with Python 3 on macOS.

[USB2TTL8]:https://www.labhackers.com/usb2ttl8.html

`/matlab/labHackersTest.mlx`
Tested (live script) in Matlab 2022b on macOS.

Note: *Works with baud rates of 115200 or less.*

`/Unity_SerialPort/Unity_SerialPort`
Tested in Unity 2021.3.15f1 on macOS.

Note: *Set baud rate to 128000 and enable Dtr flag.*

The example will send messages when pressing spacebar while entering text.

It is better to copy and paste the desired command to avoid sending incomplete commands.


To get the Unity SerialPort example you need to clone the repository with the --recursive option:
```
git clone --recursive git@github.com:MonicaPH/LabHackers_USB2TTL8Adapter_triggerExamples.git
```
or update the submodule later:
```
git submodule update --init
```
