sdkmanager --list
sdkmanager "system-images;android-36.0-Baklava;google_apis;x86_64"

avdmanager create avd -n Pixel_Root_9 -k "system-images;android-36.0-Baklava;google_apis;x86_64"