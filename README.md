# luci-app-lite-watchdog

![GitHub release (latest by date)](https://img.shields.io/github/v/release/4IceG/luci-app-lite-watchdog?style=flat-square)
![GitHub stars](https://img.shields.io/github/stars/4IceG/luci-app-lite-watchdog?style=flat-square)
![GitHub forks](https://img.shields.io/github/forks/4IceG/luci-app-lite-watchdog?style=flat-square)
![GitHub All Releases](https://img.shields.io/github/downloads/4IceG/luci-app-lite-watchdog/total)

Luci-app-lite-watchdog is connection tester based on the method of testing pings to a given address.   
The connection monitor is a conversion of the monitor known from the easyconfig package.

## <img src="https://raw.githubusercontent.com/4IceG/Personal_data/master/dooffy_design_icons_EU_flags_United_Kingdom.png" height="24"> Installation / <img src="https://raw.githubusercontent.com/4IceG/Personal_data/master/dooffy_design_icons_EU_flags_Poland.png" height="24"> Instalacja

#### Package dependencies for conventional modems.
Modem drivers are required for proper operation.
``` bash
opkg install kmod-usb-serial kmod-usb-serial-option sms-tool
```
The sms-tool package is available in the OpenWrt Master repository.

#### 1a. Install sms-tool from Master.
``` bash
opkg update
opkg install sms-tool
```

#### 1b. Download the sms-tool package and install manualy.
An example link to the package.
``` bash
https://downloads.openwrt.org/snapshots/packages/*architecture*/packages/sms-tool_2022-03-21-f07699ab-1_*architecture*.ipk
```
#### 2. Add my repository (https://github.com/4IceG/Modem-extras) to the image and follow the commands.
For images downloaded from eko.one.pl.
Installation procedure is similar, only there is no need to manually download the sms-tool package.
``` bash
opkg update
opkg install luci-app-lite-watchdog

```

## <img src="https://raw.githubusercontent.com/4IceG/Personal_data/master/dooffy_design_icons_EU_flags_United_Kingdom.png" height="24"> User compilation / <img src="https://raw.githubusercontent.com/4IceG/Personal_data/master/dooffy_design_icons_EU_flags_Poland.png" height="24"> Kompilacja przez użytkownika
``` bash
#The package can be added to Openwrt sources in two ways:

cd feeds/luci/applications/
git clone https://github.com/4IceG/luci-app-lite-watchdog.git
cd ../../..
./scripts feeds update -a; ./scripts/feeds install -a
make menuconfig

or e.g.

cd packages/
git clone https://github.com/4IceG/luci-app-lite-watchdog.git
git pull
make package/symlinks
make menuconfig

You may need to correct the file paths and the number of folders to look like this:
feeds/luci/applications/luci-app-lite-watchdog/Makefile
or
packages/luci-app-lite-watchdog/Makefile

Then you can compile the packages one by one, an example command:
make V=s -j1 feeds/luci/applications/luci-app-lite-watchdog/compile
```

### <img src="https://raw.githubusercontent.com/4IceG/Personal_data/master/dooffy_design_icons_EU_flags_United_Kingdom.png" height="32"> Preview / <img src="https://raw.githubusercontent.com/4IceG/Personal_data/master/dooffy_design_icons_EU_flags_Poland.png" height="32"> Podgląd

![](https://github.com/4IceG/Personal_data/blob/master/zrzuty/Lite-watchdog.png?raw=true)

## <img src="https://raw.githubusercontent.com/4IceG/Personal_data/master/dooffy_design_icons_EU_flags_United_Kingdom.png" height="32"> Thanks to / <img src="https://raw.githubusercontent.com/4IceG/Personal_data/master/dooffy_design_icons_EU_flags_Poland.png" height="32"> Podziękowania dla
- [obsy (Cezary Jackiewicz)](https://github.com/obsy)
