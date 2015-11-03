.PHONY: all run
all: run

run: playbook.yml
	ansible-playbook --inventory-file hosts playbook.yml
