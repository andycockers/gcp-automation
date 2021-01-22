apk update

apk add openssh openrc

/etc/init.d/sshd start || true

touch /run/openrc/softlevel

/etc/init.d/sshd start || true

rc-update add sshd