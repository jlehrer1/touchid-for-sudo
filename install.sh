echo "Installing..."
mkdir -p ${HOME}/.touchid-for-sudo
sudo cp /etc/pam.d/sudo ${HOME}/.touchid-for-sudo
cat /etc/pam.d/sudo | sudo awk 'NR==2 {print "auth       sufficient pam_tid.so"} 1' > tempfile
sudo mv tempfile /etc/pam.d
echo "Finished installing, to reset to the original state run the uninstall
script, or copy the backup file manually found in ~/.touchid-for-sudo"
