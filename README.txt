How to build platform

1. Get android open source.
    : version info - Android gingerbread 2.3.3
    ( Download site : http://source.android.com )

2. Overwrite files that you want to build.
 - \external\iproute2 : Write "ip \" into "build\core\user_tags.mk" so that add this module.
 - \external\bluetooth\bluez\audio\  : Overwrite files at the folder.
 - \external\bluetooth\bluez\common\  : Overwrite files at the folder.
 - \external\bluetooth\bluez\lib\  : Overwrite files at the folder.
 - \external\bluetooth\bluez\src\  : Overwrite files at the folder.
 - \external\bluetooth\bluez\tools\  : Overwrite files at the folder.

3. Add the following lines at the end of build/target/board/generic/BoardConfig.mk

BOARD_HAVE_BLUETOOTH := true
BT_ALT_STACK := true
BOARD_HAVE_BLUETOOTH_BCM := true
BRCM_BT_USE_BTL_IF := true
BRCM_BTL_INCLUDE_A2DP := true

4. make
 - ./build.sh user
