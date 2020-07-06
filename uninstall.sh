if [ ! -f "${HOME}/.touchid-for-sudo/sudo" ]; then 
	echo "The ~/.touchid-for-sudo folder has been deleted, and the original
/etc/pam.d/sudo file has been lost. Would you like to restore from the remote
file found on https://github.com/jlehrer1/touchid-for-sudo? A copy of the
current /etc/pam.d/sudo will be stored in ~/.touchid-for-sudo-remote-restore. Note that this
change may lead to unexpected problems (y/n) "
	while true
	do
		case $input in
			[yY][eE][sS]|[yY])
				git clone https://github.com/jlehrer1/touchid-for-sudo
				mkdir -p "${HOME}/.touchid-for-sudo-remote-restore"
				cp /etc/pam.d/sudo "${HOME}/.touchid-for-sudo-remote-restore"
				cp touchid-for-sudo/.backups/sudo /etc/pam.d
				rm -rf touchid-for-sudo/
				echo "Successfully restored to remote backup"
				break
				;;
			[nN][oO]|[nN])
				break
				;;
			*)
			echo "Invalid"
			;;
		esac
	done		
else
	while true 
	do
		echo "Uninstalling..."
		cp "${HOME}/.touchid-for-sudo/sudo" /etc/pam.d/sudo
		read -r -p "Finished uninstalling. Would you like to keep the backup found at ~/.touchid-for-sudo/sudo? (y/n) " input
		case $input in
			[yY][eE][sS]|[yY])
				rm -rf "${HOME}/.touchid-for-sudo"
				break
				;;
			[nN][oO]|[nN])
				break
				;;
			*)
			echo "Invalid"
			;;
		esac
	done
fi
