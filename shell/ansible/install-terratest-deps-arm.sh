cd /tmp/ansible

ansible-playbook -c local -i localhost, install-terratest-deps-buster.yml -e 'ansible_python_interpreter=/usr/bin/python3'