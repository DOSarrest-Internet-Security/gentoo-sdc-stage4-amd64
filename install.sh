echo "--- Running Emerge Web RSync"
emerge-webrsync
echo "--- Installing stage4 packages"
emerge -j2 -v app-admin/syslog-ng sys-process/cronie mlocate
echo "--- Adding necessary sysinit tasks"
rc-update add sshd sysinit
rc-update add syslog-ng sysinit
rc-update add cronie sysinit
echo "--- Cleaning up"
rm -fr /usr/portage/*
rm install.sh
