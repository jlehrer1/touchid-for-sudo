# touchid-for-sudo
### A tool to safely enable using the Macbook's Touch ID for sudo running commands.

Usage:
To install, simply paste the following into your Terminal of choice. Since this
requires editing root files, your password will be required.

```shell
git clone https://github.com/jlehrer1/touchid-for-sudo
cd touchid-for-sudo/
chmod +x install.sh
sudo ./install.sh
cd ..
rm -rf touchid-for-sudo/
```

To uninstall, either run
```shell
sudo ~/.touch-id-for-sudo/uninstall.sh
```

Or if you have since deleted the folder, (which will require running as
root since the user
will not have write permissions to the sudo file backup)
```shell
git clone https://github.com/jlehrer1/touchid-for-sudo
cd touch-id-for-sudo/
chmod +x uninstall.sh
sudo ./uninstall.sh
```

However, it is **not** recommended that you delete `~/.touch-id-for-sudo/` as it
contains all the clean backups of the edited root files.

Although this method should be safe theoretically, it's not a bad idea to make a
Time Machine backup since changing root files can lead to weird behavior that is very hard to track down. 


