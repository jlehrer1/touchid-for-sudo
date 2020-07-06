echo "Uninstalling..."
cp "${HOME}/.touchid-for-sudo/sudo" /etc/pam.d/sudo
echo "Finished uninstalling. A copy of the original /etc/pam.d/sudo file has
been left in ~/.touchid-for-sudo"
