apk update

apk add openssh openrc

rc-update add sshd

rc-status

/etc/init.d/sshd start || true

touch /run/openrc/softlevel

/etc/init.d/sshd start || true

sleep 30