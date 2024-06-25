@echo off
echo Please Enter the Com Port #
set /p COM=
"%~dp0\avrdude\avrdude.exe" "-C%~dp0\avrdude\avrdude.conf" -v -V -patmega328pb -curclock -PCOM%COM% -b115200 -D -xnometadata "-Ueeprom:w:%~dp0\BatteryWizard\FirmwareUpgradeA.ino.eep:i" "-Uflash:w:%~dp0\BatteryWizard/FirmwareUpgradeA.ino.hex:i"
echo Step 1 is done!
pause
"%~dp0\avrdude\avrdude.exe" "-C%~dp0\avrdude\avrdude.conf" -v -V -patmega328pb -curclock -PCOM%COM% -b115200 -D -xnometadata "-Ueeprom:w:%~dp0\BatteryWizard\FirmwareUpgradeB.ino.eep:i" "-Uflash:w:%~dp0\BatteryWizard/FirmwareUpgradeB.ino.hex:i"
echo That's it, your firmware is updated to 2.12.50
pause