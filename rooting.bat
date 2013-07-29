@echo off
title Vega IRON Rooting tool ver 3.0
:START
echo			Vega IRON Rooting tool ver 3.0
echo	루팅 전 해야될 작업
echo	1. USB 디버깅 모드 체크
echo	2. USB driver intsall
echo.
echo			Infomation
echo	Superuser 버전 :
echo	 SuperSU 1.45 / Superuser(CWM) 1.0.1.8 / Superuser(ChainsDD) 3.1.3
echo	순정 펌웨어 버전 : 
echo	 SKTelecom 1.44 / Olleh 1.27 / U+ 1.32
echo	ADBdriverinstaller 출처 http://adbdriver.com/downloads/
echo	Recovery 출처 :
echo	 CWM : http://cafe.naver.com/skydevelopers/257564
echo	 TWRP : http://blog.csdn.net/benjaminwan/article/details/9092353
echo	제작 : 양갱
echo.
echo			 M e n u
echo	1. Rooting
echo	2. Kernel tampered cnt reset
echo	3. 순정 롬 올리기
echo	4. Vega IRON Rooting tool 종료
echo.
set /p mode= 원하시는 선택을 입력 후 엔터키를 누르세요 : 
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
set /p rooting= 원하시는 선택을 입력 후 엔터키를 누르세요 :
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
set /p Su= 원하시는 루팅앱을 선택 후 엔터키를 누르세요 : 
echo adb wait-for-device
adb wait-for-device
echo adb reboot bootloader
adb reboot bootloader
echo fastboot boot CWMRecovery
fastboot boot Recovery/CWMRecovery.img
echo install zip from sideload로 진입해주세요.
echo 진입하셨으면 아무키나 눌러주세요.
pause
echo AdbDriverInstaller.exe가 실행됩니다.
AdbDriverInstaller.exe
echo install 눌러주세요.
echo 경고 창 뜰 경우 계속 눌러주세요.
echo 설치가 완료 되었으면 아무키나 눌러주세요.
pause
echo ADBdriverinstaller가 종료되고 rooting을 진행합니다.
echo taskkill /f /im AdbDriverInstaller.exe
taskkill /f /im AdbDriverInstaller.exe
if /i "%Su%" == "1" echo adb sideload Root/UPDATE-SuperSU-v1.45.zip
if /i "%Su%" == "1" adb sideload Root/UPDATE-SuperSU-v1.45.zip
if /i "%Su%" == "2" echo adb sideload Root/superuser.zip 
if /i "%Su%" == "2" adb sideload Root/superuser.zip
if /i "%Su%" == "3" echo adb sideload Root/Superuser-3.1.3-arm-signed.zip
if /i "%Su%" == "3" adb sideload Root/Superuser-3.1.3-arm-signed.zip
echo 플래싱이 완료되면 아무키나 눌러주세요.
pause
echo ADB Driver 및 rooting이 완료 되었습니다.
echo adb kill-server
adb kill-server
echo.
echo 1. 초기메뉴로 돌아가기 
echo 2. 종료하기
set /p exitmenu= 원하시는 선택을 입력 후 엔터키를 누르세요 : 
if /i "%exitmenu%" == "1" goto START
if /i "%exitmenu%" == "2" goto exit
cls
:rooting_CWM
echo			Superuser install choice
echo	1. SuperSU
echo	2. Superuser(CWM)
echo	3. Superuser(ChainsDD)
set /p Su= 설치를 원하는 루팅앱을 선택 후 엔터키를 누르세요 : 
echo adb wait-for-device
adb wait-for-device
echo adb reboot bootloader
adb reboot bootloader
echo fastboot boot CWMRecovery
fastboot boot Recovery/CWMRecovery.img
echo install zip from sideload로 진입해주세요.
echo 진입하셨으면 아무키나 눌러주세요.
pause
if /i "%Su%" == "1" echo adb sideload Root/UPDATE-SuperSU-v1.45.zip
if /i "%Su%" == "1" adb sideload Root/UPDATE-SuperSU-v1.45.zip 
if /i "%Su%" == "2" echo adb sideload Root/superuser.zip
if /i "%Su%" == "2" adb sideload Root/superuser.zip
if /i "%Su%" == "3" echo adb sideload Root/Superuser-3.1.3-arm-signed.zip
if /i "%Su%" == "3" adb sideload Root/Superuser-3.1.3-arm-signed.zip
echo 플래싱이 완료되면 아무키나 눌러주세요.
pause
echo adb reboot
adb reboot
echo Rooting이 완료 되었습니다.
echo adb kill-server
adb kill-server
echo.
echo 1. 초기메뉴로 돌아가기 
echo 2. 종료하기
set /p exitmenu= 원하시는 선택을 입력 후 엔터키를 누르세요 : 
if /i "%exitmenu%" == "1" goto START
if /i "%exitmenu%" == "2" goto exit
cls
:driver_TWRP
echo			Superuser install choice
echo	1. SuperSU
echo	2. Superuser(CWM)
echo	3. Superuser(ChainsDD)
set /p Su= 원하시는 루팅앱을 선택 후 엔터키를 누르세요 : 
echo adb wait-for-device
adb wait-for-device
echo reboot bootloader
adb reboot bootloader
echo fastboot boot TWRPRecovery
fastboot boot Recovery/TWRPRecovery.img
echo Advanced에 ADB Sidelad로 진입후 Swipe to start Sideload 해주세요
echo 진입하셨으면 아무키나 눌러주세요.
pause
echo AdbDriverInstaller.exe가 실행됩니다.
AdbDriverInstaller.exe
echo install 눌러주세요.
echo 경고 창 뜰 경우 계속 눌러주세요.
echo 설치가 완료 되었으면 아무키나 눌러주세요.
pause
echo ADBdriverinstaller가 종료되고 rooting을 진행합니다.
echo taskkill /f /im AdbDriverInstaller.exe
taskkill /f /im AdbDriverInstaller.exe
if /i "%Su%" == "1" echo adb sideload Root/UPDATE-SuperSU-v1.45.zip
if /i "%Su%" == "1" adb sideload Root/UPDATE-SuperSU-v1.45.zip
if /i "%Su%" == "2" echo adb sideload Root/superuser.zip 
if /i "%Su%" == "2" adb sideload Root/superuser.zip
if /i "%Su%" == "3" echo adb sideload Root/Superuser-3.1.3-arm-signed.zip
if /i "%Su%" == "3" adb sideload Root/Superuser-3.1.3-arm-signed.zip
echo 플래싱이 완료되면 아무키나 눌러주세요.
pause
echo ADB Driver 및 rooting이 완료 되었습니다.
echo adb kill-server
adb kill-server
echo.
echo 1. 초기메뉴로 돌아가기 
echo 2. 종료하기
set /p exitmenu= 원하시는 선택을 입력 후 엔터키를 누르세요 : 
if /i "%exitmenu%" == "1" goto START
if /i "%exitmenu%" == "2" goto exit
cls
:rooting_TWRP
echo			Superuser install choice
echo	1. SuperSU
echo	2. Superuser(CWM)
echo	3. Superuser(ChainsDD)
set /p Su= 설치를 원하는 루팅앱을 선택 후 엔터키를 누르세요 : 
echo adb wait-for-device
adb wait-for-device
echo reboot bootloader
adb reboot bootloader
echo fastboot boot TWRPRecovery
fastboot boot Recovery/TWRPRecovery.img
echo Advanced에 ADB Sidelad로 진입후 Swipe to start Sideload 해주세요
echo 진입하셨으면 아무키나 눌러주세요.
pause
if /i "%Su%" == "1" echo adb sideload Root/UPDATE-SuperSU-v1.45.zip
if /i "%Su%" == "1" adb sideload Root/UPDATE-SuperSU-v1.45.zip 
if /i "%Su%" == "2" echo adb sideload Root/superuser.zip
if /i "%Su%" == "2" adb sideload Root/superuser.zip
if /i "%Su%" == "3" echo adb sideload Root/Superuser-3.1.3-arm-signed.zip
if /i "%Su%" == "3" adb sideload Root/Superuser-3.1.3-arm-signed.zip
echo 플래싱이 완료되면 아무키나 눌러주세요.
pause
echo adb reboot
adb reboot
echo Rooting이 완료 되었습니다.
echo adb kill-server
adb kill-server
echo.
echo 1. 초기메뉴로 돌아가기 
echo 2. 종료하기
set /p exitmenu= 원하시는 선택을 입력 후 엔터키를 누르세요 : 
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
echo adb shell의 루트 권한 허용 해주세요
echo adb shell의 루트 권한이 있다면 계속 진행 해주세요.
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
echo 1. 초기메뉴로 돌아가기 
echo 2. 종료하기
set /p exitmenu= 원하시는 선택을 입력 후 엔터키를 누르세요 : 
if /i "%exitmenu%" == "1" goto START
if /i "%exitmenu%" == "2" goto exit
cls
:rom_up
echo			Operator selection
echo	1. SKTelecom
echo	2. Olleh
echo	3. U+
set /p Telecom= 해당 통신사를 입력 후 엔터키를 누르세요 :
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
echo apply update from ADB로 진입해주세요.
echo 진입하셨으면 아무키나 눌러주세요.
pause 
echo adb sideload OriginalRom/IM-A870S_Update.zip
adb sideload OriginalRom/IM-A870S_Update.zip
echo 플래싱이 완료되면 아무키나 눌러주세요.
pause
echo 순정 롬 업로드가 완료 되었습니다. 재부팅 해주세요.
echo adb kill-server
adb kill-server
echo.
echo 1. 초기메뉴로 돌아가기 
echo 2. 종료하기
set /p exitmenu= 원하시는 선택을 입력 후 엔터키를 누르세요 : 
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
echo apply update from ADB로 진입해주세요.
echo 진입하셨으면 아무키나 눌러주세요.
pause 
echo adb sideload OriginalRom/IM-A870K_Update.zip
adb sideload OriginalRom/IM-A870K_Update.zip
echo 플래싱이 완료되면 아무키나 눌러주세요.
pause
echo 순정 롬 업로드가 완료 되었습니다. 재부팅 해주세요.
echo adb kill-server
adb kill-server
echo.
echo 1. 초기메뉴로 돌아가기 
echo 2. 종료하기
set /p exitmenu= 원하시는 선택을 입력 후 엔터키를 누르세요 : 
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
echo apply update from ADB로 진입해주세요.
echo 진입하셨으면 아무키나 눌러주세요.
pause 
echo adb sideload OriginalRom/IM-A870L_Update.zip
adb sideload OriginalRom/IM-A870L_Update.zip
echo 플래싱이 완료되면 아무키나 눌러주세요.
pause
echo 순정 롬 업로드가 완료 되었습니다. 재부팅 해주세요.
echo adb kill-server
adb kill-server
echo.
echo 1. 초기메뉴로 돌아가기 
echo 2. 종료하기
set /p exitmenu= 원하시는 선택을 입력 후 엔터키를 누르세요 : 
if /i "%exitmenu%" == "1" goto START
if /i "%exitmenu%" == "2" goto exit
cls
:exit