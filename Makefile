commit: 
	@prettier -c *
	@git commit -a

pc: pretty commit

pretty:
ifneq ($(which prettier), 1)
	@prettier --write *
else
	@echo Install prettier binary.
endif