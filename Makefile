.PHONY: all run
all: run

run: playbook.yml
ifdef DASHING_GIT_REPO
	ansible-playbook --inventory-file hosts playbook.yml --extra-vars "dashing_git_repo=$(DASHING_GIT_REPO)"
else
	ansible-playbook --inventory-file hosts playbook.yml
endif
