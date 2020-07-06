if [ ! -f "${HOME}/.touchid-for-sudo/sudo" ]; then 
	echo "The ~/.touchid-for-sudo folder has been deleted, and the original
/etc/pam.d/sudo file has been lost. Would you like to restore from the remote
file found on https://github.com/jlehrer1/touchid-for-sudo? Note that it may not
be the same and could lead to problems. (y/n) "
	
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
