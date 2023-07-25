ping:
	ansible all -i inventory.ini -m ping

uptime:
	ansible all -i inventory.ini -a 'uptime'

install:
	ansible-galaxy install -r requirements.yml

setup:
	ansible-playbook -i inventory.ini -vv setup.yml

deploy:
	ansible-playbook -i inventory.ini -vv deploy.yml
