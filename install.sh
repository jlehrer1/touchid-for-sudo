echo "Installing..."
mkdir -p ${HOME}/.touchid-for-sudo
cp /etc/pam.d/sudo ${HOME}/.touchid-for-sudo
cat /etc/pam.d/sudo | awk 'NR==2 {print "auth       sufficient     pam_tid.so"} 1' > /etc/pam.d/sudo
