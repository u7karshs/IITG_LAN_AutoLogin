# IITG AutoLogin
This script will automate logging in to the IITG network with a single click.

## Steps ð©âð«

1. Update the login credentials in login.sh file.
   (interactive or hardcoded)
2. Run the script file by `./login.sh`.


## To configure oneClick BAT {Windows} file ð
1. Update the above script file path in oneClick.bat file.
2. Save it and run.
3. Further, if required, an `.EXE` file can be created for the `.bat` file using `iexpress.exe`
   and disable prompts as per the requirements.


## To configure oneClick .desktop {Ubuntu} file ð
1. Create desktop shortcut launcher from existing .desktop files from
   `$ nautilus /usr/share/applications/`.
2. `Allow Launching` by right click on the above created desktop shortcut.
3. Then edit the .desktop file as per the requirement and script file path
   for example:
```
#!/bin/bash
[Desktop Entry]
Version=1.0
Type=Application
Terminal=true
Exec=bash -c "/home/u/Documents/LAN/log.sh"
Name=IITGlogin
Comment=do this and that
```
4. One can choose to create a startup application using the shortcut `Alt`+`F2` and run the
Â   `gnome-session-properties` command.Â 

## Future modifications ð®
1. To add a logout feature.
2. To use curl in silent mode, i.e `-s/--silent`, doesn't show a progress meter or error messages. Makes Curl mute.Â 
Â  Â If this option is used twice, the second will again disable mute.
3. Link parsed to reload is trimmed for 600 sec (default) reload option, which might get modified in future.
