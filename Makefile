.PHONY: all run
all: run

run: playbook.yml
	ansible-playbook --inventory-file hosts playbook.yml --extra-vars "dashing_git_repo=$(DASHING_GIT_REPO)"
