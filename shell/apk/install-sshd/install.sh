apk update

apk add openssh openrc

rc-update add sshd

touch /run/openrc/softlevel

/etc/init.d/sshd start