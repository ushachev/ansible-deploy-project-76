ping:
	ansible all -i inventory.ini -m ping

uptime:
	ansible all -i inventory.ini -a 'uptime'

install:
	ansible-galaxy install -r requirements.yml

setup:
	ansible-playbook -i inventory.ini -vv --vault-password-file vault-password setup.yml

deploy:
	ansible-playbook -i inventory.ini -vv --vault-password-file vault-password deploy.yml

edit-vault:
	ansible-vault edit --vault-password-file vault-password group_vars/webservers/vault.yml

view-vault:
	ansible-vault view --vault-password-file vault-password group_vars/webservers/vault.yml
