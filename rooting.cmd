@echo off
title Vega IRON Rooting tool ver 3.0
:START
echo			Vega IRON Rooting tool ver 3.0
echo	���� �� �ؾߵ� �۾�
echo	1. USB ����� ��� üũ
echo	2. USB driver intsall
echo.
echo			Infomation
echo	Superuser ���� :
echo	 SuperSU 1.45 / Superuser(CWM) 1.0.1.8 / Superuser(ChainsDD) 3.1.3
echo	���� �߿��� ���� : 
echo	 SKTelecom 1.44 / Olleh 1.27 / U+ 1.32
echo	ADBdriverinstaller ��ó http://adbdriver.com/downloads/
echo	Recovery ��ó :
echo	 CWM : http://cafe.naver.com/skydevelopers/257564
echo	 TWRP : http://blog.csdn.net/benjaminwan/article/details/9092353
echo	���� : �簻
echo.
echo			 M e n u
echo	1. Rooting
echo	2. Kernel tampered cnt reset
echo	3. ���� �� �ø���
echo	4. Vega IRON Rooting tool ����
echo.
set /p mode= ���Ͻô� ������ �Է� �� ����Ű�� �������� : 
if /i "%mode%" == "1" goto rooting
if /i "%mode%" == "2" goto cnt
if /i "%mode%" == "3" goto rom_up
if /i "%mode%" == "4" goto exit
cls
:rooting
echo			M e n u
echo	1. CWM ADB driver install ^& rooting (SKT/KT)
echo	2. TWRP ADB driver install ^& rooting (SKT/KT/U+)
echo	3. CWM Rooting (SKT/KT)
echo	4. TWRP Rooting (SKT/KT/U+)
echo.
set /p rooting= ���Ͻô� ������ �Է� �� ����Ű�� �������� :
if /i "%rooting%" == "1" goto dirver_CWM
if /i "%rooting%" == "2" goto diver_TWRP
if /i "%rooting%" == "3" goto rooting_CWM
if /i "%rooting%" == "4" goto rooting_TWRP
cls
:driver_CWM
echo			Superuser install choice
echo	1. SuperSU
echo	2. Superuser(CWM)
echo	3. Superuser(ChainsDD)
set /p Su= ���Ͻô� ���þ��� ���� �� ����Ű�� �������� : 
echo adb wait-for-device
adb wait-for-device
echo adb reboot bootloader
adb reboot bootloader
echo fastboot boot CWMRecovery
fastboot boot Recovery/CWMRecovery.img
echo install zip from sideload�� �������ּ���.
echo �����ϼ����� �ƹ�Ű�� �����ּ���.
pause
echo AdbDriverInstaller.exe�� ����˴ϴ�.
AdbDriverInstaller.exe
echo install �����ּ���.
echo ��� â �� ��� ��� �����ּ���.
echo ��ġ�� �Ϸ� �Ǿ����� �ƹ�Ű�� �����ּ���.
pause
echo ADBdriverinstaller�� ����ǰ� rooting�� �����մϴ�.
echo taskkill /f /im AdbDriverInstaller.exe
taskkill /f /im AdbDriverInstaller.exe
if /i "%Su%" == "1" echo adb sideload Root/UPDATE-SuperSU-v1.45.zip
if /i "%Su%" == "1" adb sideload Root/UPDATE-SuperSU-v1.45.zip
if /i "%Su%" == "2" echo adb sideload Root/superuser.zip 
if /i "%Su%" == "2" adb sideload Root/superuser.zip
if /i "%Su%" == "3" echo adb sideload Root/Superuser-3.1.3-arm-signed.zip
if /i "%Su%" == "3" adb sideload Root/Superuser-3.1.3-arm-signed.zip
echo �÷����� �Ϸ�Ǹ� �ƹ�Ű�� �����ּ���.
pause
echo ADB Driver �� rooting�� �Ϸ� �Ǿ����ϴ�.
echo adb kill-server
adb kill-server
echo.
echo 1. �ʱ�޴��� ���ư��� 
echo 2. �����ϱ�
set /p exitmenu= ���Ͻô� ������ �Է� �� ����Ű�� �������� : 
if /i "%exitmenu%" == "1" goto START
if /i "%exitmenu%" == "2" goto exit
cls
:rooting_CWM
echo			Superuser install choice
echo	1. SuperSU
echo	2. Superuser(CWM)
echo	3. Superuser(ChainsDD)
set /p Su= ��ġ�� ���ϴ� ���þ��� ���� �� ����Ű�� �������� : 
echo adb wait-for-device
adb wait-for-device
echo adb reboot bootloader
adb reboot bootloader
echo fastboot boot CWMRecovery
fastboot boot Recovery/CWMRecovery.img
echo install zip from sideload�� �������ּ���.
echo �����ϼ����� �ƹ�Ű�� �����ּ���.
pause
if /i "%Su%" == "1" echo adb sideload Root/UPDATE-SuperSU-v1.45.zip
if /i "%Su%" == "1" adb sideload Root/UPDATE-SuperSU-v1.45.zip 
if /i "%Su%" == "2" echo adb sideload Root/superuser.zip
if /i "%Su%" == "2" adb sideload Root/superuser.zip
if /i "%Su%" == "3" echo adb sideload Root/Superuser-3.1.3-arm-signed.zip
if /i "%Su%" == "3" adb sideload Root/Superuser-3.1.3-arm-signed.zip
echo �÷����� �Ϸ�Ǹ� �ƹ�Ű�� �����ּ���.
pause
echo adb reboot
adb reboot
echo Rooting�� �Ϸ� �Ǿ����ϴ�.
echo adb kill-server
adb kill-server
echo.
echo 1. �ʱ�޴��� ���ư��� 
echo 2. �����ϱ�
set /p exitmenu= ���Ͻô� ������ �Է� �� ����Ű�� �������� : 
if /i "%exitmenu%" == "1" goto START
if /i "%exitmenu%" == "2" goto exit
cls
:driver_TWRP
echo			Superuser install choice
echo	1. SuperSU
echo	2. Superuser(CWM)
echo	3. Superuser(ChainsDD)
set /p Su= ���Ͻô� ���þ��� ���� �� ����Ű�� �������� : 
echo adb wait-for-device
adb wait-for-device
echo reboot bootloader
adb reboot bootloader
echo fastboot boot TWRPRecovery
fastboot boot Recovery/TWRPRecovery.img
echo Advanced�� ADB Sidelad�� ������ Swipe to start Sideload ���ּ���
echo �����ϼ����� �ƹ�Ű�� �����ּ���.
pause
echo AdbDriverInstaller.exe�� ����˴ϴ�.
AdbDriverInstaller.exe
echo install �����ּ���.
echo ��� â �� ��� ��� �����ּ���.
echo ��ġ�� �Ϸ� �Ǿ����� �ƹ�Ű�� �����ּ���.
pause
echo ADBdriverinstaller�� ����ǰ� rooting�� �����մϴ�.
echo taskkill /f /im AdbDriverInstaller.exe
taskkill /f /im AdbDriverInstaller.exe
if /i "%Su%" == "1" echo adb sideload Root/UPDATE-SuperSU-v1.45.zip
if /i "%Su%" == "1" adb sideload Root/UPDATE-SuperSU-v1.45.zip
if /i "%Su%" == "2" echo adb sideload Root/superuser.zip 
if /i "%Su%" == "2" adb sideload Root/superuser.zip
if /i "%Su%" == "3" echo adb sideload Root/Superuser-3.1.3-arm-signed.zip
if /i "%Su%" == "3" adb sideload Root/Superuser-3.1.3-arm-signed.zip
echo �÷����� �Ϸ�Ǹ� �ƹ�Ű�� �����ּ���.
pause
echo ADB Driver �� rooting�� �Ϸ� �Ǿ����ϴ�.
echo adb kill-server
adb kill-server
echo.
echo 1. �ʱ�޴��� ���ư��� 
echo 2. �����ϱ�
set /p exitmenu= ���Ͻô� ������ �Է� �� ����Ű�� �������� : 
if /i "%exitmenu%" == "1" goto START
if /i "%exitmenu%" == "2" goto exit
cls
:rooting_TWRP
echo			Superuser install choice
echo	1. SuperSU
echo	2. Superuser(CWM)
echo	3. Superuser(ChainsDD)
set /p Su= ��ġ�� ���ϴ� ���þ��� ���� �� ����Ű�� �������� : 
echo adb wait-for-device
adb wait-for-device
echo reboot bootloader
adb reboot bootloader
echo fastboot boot TWRPRecovery
fastboot boot Recovery/TWRPRecovery.img
echo Advanced�� ADB Sidelad�� ������ Swipe to start Sideload ���ּ���
echo �����ϼ����� �ƹ�Ű�� �����ּ���.
pause
if /i "%Su%" == "1" echo adb sideload Root/UPDATE-SuperSU-v1.45.zip
if /i "%Su%" == "1" adb sideload Root/UPDATE-SuperSU-v1.45.zip 
if /i "%Su%" == "2" echo adb sideload Root/superuser.zip
if /i "%Su%" == "2" adb sideload Root/superuser.zip
if /i "%Su%" == "3" echo adb sideload Root/Superuser-3.1.3-arm-signed.zip
if /i "%Su%" == "3" adb sideload Root/Superuser-3.1.3-arm-signed.zip
echo �÷����� �Ϸ�Ǹ� �ƹ�Ű�� �����ּ���.
pause
echo adb reboot
adb reboot
echo Rooting�� �Ϸ� �Ǿ����ϴ�.
echo adb kill-server
adb kill-server
echo.
echo 1. �ʱ�޴��� ���ư��� 
echo 2. �����ϱ�
set /p exitmenu= ���Ͻô� ������ �Է� �� ����Ű�� �������� : 
if /i "%exitmenu%" == "1" goto START
if /i "%exitmenu%" == "2" goto exit
cls
:cnt
echo adb wait-for-device
adb wait-for-device
echo adb push Cnt/rawdata.img /sdcard/
adb push Cnt/rawdata.img /sdcard/
echo adb push Cnt/aboot.img /sdcard/
adb push Cnt/aboot.img /sdcard/
echo shell su -login
adb shell su -c exit
echo adb shell�� ��Ʈ ���� ��� ���ּ���
echo adb shell�� ��Ʈ ������ �ִٸ� ��� ���� ���ּ���.
pause
echo adb shell su -c dd of=/dev/block/mmcblk0p12 if=/sdcard/rawdata.img
adb shell su -c dd of=/dev/block/mmcblk0p12 if=/sdcard/rawdata.img
echo adb shell su -c dd of=/dev/block/mmcblk0p5 if=/sdcard/aboot.img
adb shell su -c dd of=/dev/block/mmcblk0p5 if=/sdcard/aboot.img
echo adb reboot
adb reboot
echo Kernel tampered cnt reset complete
echo adb kill-server
adb kill-server
echo.
echo 1. �ʱ�޴��� ���ư��� 
echo 2. �����ϱ�
set /p exitmenu= ���Ͻô� ������ �Է� �� ����Ű�� �������� : 
if /i "%exitmenu%" == "1" goto START
if /i "%exitmenu%" == "2" goto exit
cls
:rom_up
echo			Operator selection
echo	1. SKTelecom
echo	2. Olleh
echo	3. U+
set /p Telecom= �ش� ��Ż縦 �Է� �� ����Ű�� �������� :
if /i "%Telecom%" == "1" goto SKTfirmware
if /i "%Telecom%" == "2" goto KTfirmware
if /i "%Telecom%" == "3" goto LGTfirmware
:SKTfirmware
echo SKT Origianl firmware dwonload
OriginalRom\IM-A870S_OTA.py
echo adb wait-for-device
adb wait-for-device
echo reboot recovery
adb reboot recovery
echo apply update from ADB�� �������ּ���.
echo �����ϼ����� �ƹ�Ű�� �����ּ���.
pause 
echo adb sideload OriginalRom/IM-A870S_Update.zip
adb sideload OriginalRom/IM-A870S_Update.zip
echo �÷����� �Ϸ�Ǹ� �ƹ�Ű�� �����ּ���.
pause
echo ���� �� ���ε尡 �Ϸ� �Ǿ����ϴ�. ����� ���ּ���.
echo adb kill-server
adb kill-server
echo.
echo 1. �ʱ�޴��� ���ư��� 
echo 2. �����ϱ�
set /p exitmenu= ���Ͻô� ������ �Է� �� ����Ű�� �������� : 
if /i "%exitmenu%" == "1" goto START
if /i "%exitmenu%" == "2" goto exit
cls
:KTfirmware
echo KT Origianl firmware dwonload
OriginalRom\IM-A870K_OTA.py
echo adb wait-for-device
adb wait-for-device
echo reboot recovery
adb reboot recovery
echo apply update from ADB�� �������ּ���.
echo �����ϼ����� �ƹ�Ű�� �����ּ���.
pause 
echo adb sideload OriginalRom/IM-A870K_Update.zip
adb sideload OriginalRom/IM-A870K_Update.zip
echo �÷����� �Ϸ�Ǹ� �ƹ�Ű�� �����ּ���.
pause
echo ���� �� ���ε尡 �Ϸ� �Ǿ����ϴ�. ����� ���ּ���.
echo adb kill-server
adb kill-server
echo.
echo 1. �ʱ�޴��� ���ư��� 
echo 2. �����ϱ�
set /p exitmenu= ���Ͻô� ������ �Է� �� ����Ű�� �������� : 
if /i "%exitmenu%" == "1" goto START
if /i "%exitmenu%" == "2" goto exit
cls
:LGTfirmware
echo LGT Origianl firmware dwonload
OriginalRom\IM-A870L_OTA.py
echo adb wait-for-device
adb wait-for-device
echo reboot recovery
adb reboot recovery
echo apply update from ADB�� �������ּ���.
echo �����ϼ����� �ƹ�Ű�� �����ּ���.
pause 
echo adb sideload OriginalRom/IM-A870L_Update.zip
adb sideload OriginalRom/IM-A870L_Update.zip
echo �÷����� �Ϸ�Ǹ� �ƹ�Ű�� �����ּ���.
pause
echo ���� �� ���ε尡 �Ϸ� �Ǿ����ϴ�. ����� ���ּ���.
echo adb kill-server
adb kill-server
echo.
echo 1. �ʱ�޴��� ���ư��� 
echo 2. �����ϱ�
set /p exitmenu= ���Ͻô� ������ �Է� �� ����Ű�� �������� : 
if /i "%exitmenu%" == "1" goto START
if /i "%exitmenu%" == "2" goto exit
cls
:exit