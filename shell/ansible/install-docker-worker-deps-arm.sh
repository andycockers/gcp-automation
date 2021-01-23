cd /tmp/ansible

ansible-playbook -c local -i localhost, install-docker-worker-deps-arm.yml -e 'ansible_python_interpreter=/usr/bin/python3'