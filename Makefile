commit: pretty git_commit

pretty:
ifneq ($(which prettier), 1)
	@prettier --write README.md mkdocs.yml docs
else
	@echo Install prettier binary.
endif


git_commit:
	git commit -a
