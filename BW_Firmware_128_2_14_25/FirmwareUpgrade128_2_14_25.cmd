@echo off
echo Please Enter the Com Port #
set /p COM=
"%~dp0\avrdude\avrdude.exe" "-C%~dp0\avrdude\avrdude.conf" -v -V -patmega328pb -curclock -PCOM%COM% -b115200 -D -xnometadata "-Uflash:w:%~dp0\BatteryWizard/BatteryWizard_128_2_14_25.ino.hex:i"
echo Firmware Update Complete
pause
