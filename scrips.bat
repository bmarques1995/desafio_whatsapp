echo "Set emulator dir on PATH"
emulator -list-avds
emulator -avd <avd_name> -gpu swiftshader_indirect

adb push build/agent /data/local/tmp/
adb shell
su
chmod +x /data/local/tmp/agent

cd /data/local/tmp
./agent