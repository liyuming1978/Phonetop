${ADB_LOCATION:='/home/young/adt-bundle-linux-x86_64-20140702/sdk/platform-tools'}

java -jar systemapp/signapk.jar systemapp/platform.x509.pem systemapp/platform.pk8 bin/phonetop.apk bin/phonetop_signed.apk
${ADB_LOCATION}/adb uninstall org.secmem232.phonetop
${ADB_LOCATION}/adb install bin/phonetop_signed.apk