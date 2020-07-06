# touchid-for-sudo
A script to safely enable using the Macbook's Touch ID for sudo running
commands.

Usage:
To install, simply paste the following into your Terminal of choice. Since this
requires editing root files, your password will be required.

```shell
git clone https://github.com/jlehrer1/touchid-for-sudo
cd touchid-for-sudo/
chmod +x install.sh
./install.sh
cd ..
rm -rf touchid-for-sudo/
```

To uninstall, either run
```shell
~/.touch-id-for-sudo/uninstall.sh
```

Or if you have since deleted the folder,
```shell
git clone https://github.com/jlehrer1/touchid-for-sudo
cd touch-id-for-sudo/
chmod +x uninstall.sh
./uninstall.sh
cd ..
rm -rf touch-id-for-sudo
```

However, it is **not** recommended that you delete `~/.touch-id-for-sudo/` as it
contains all the backups of the edited root files.
