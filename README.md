# IITG AutoLogin
This script will automate logging in to the IITG network with a single click.
</br></br> <img src="/img.png"/>

## Steps 👩‍🏫

1. Update the login credentials in login.sh file.
   (interactive or hardcoded)
2. Run the script file by `./login.sh`.


## To configure oneClick BAT {Windows} file 👀
1. Update the above script file path in oneClick.bat file.
2. Save it and run.
3. Further, if required, an `.EXE` file can be created for the `.bat` file using `iexpress.exe`
   and disable prompts as per the requirements.


## To configure oneClick .desktop {Ubuntu} file 👀
1. Create desktop shortcut launcher from existing .desktop files from
   `$ /usr/share/applications`.
3. `Allow Launching` by right click on the above created desktop shortcut.
4. Then edit the .desktop file as per the requirement and script file path
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
5. One can choose to create a startup application globally for all users by saving the .desktop file in `/etc/xdg/autostart`. Check for the updated startup application by using the shortcut `Alt`+`F2` and run the `gnome-session-properties` command.   
6. Alternatively, can use `lynx https://agnigarh.iitg.ac.in:1442/login?` in shell. 

## Future modifications 🔮
1. Refactoring `underDevelopment.sh` that has logout feature `trap ctrl_c SIGINT`.
2. To use curl in silent mode, i.e `-s/--silent`, doesn't show a progress meter or error messages. Makes Curl mute. 
   If this option is used twice, the second will again disable mute.
3. Link parsed to reload is trimmed for 600 sec (default) reload option, which might get modified in future.
4. Creating def. inf. recal/reload loop => supporting remote invocation {Error handling | Remote connection}
5. https://curl.se/docs/sslcerts.html {`-k` / `--insecure`} SSL/TLS Certificate Verification
