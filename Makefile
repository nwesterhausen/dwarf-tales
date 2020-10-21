pages_cfg := $(shell find . -name ".pages")

commit: 
	@prettier -c * $(pages_cfg)
	@git commit -a

pc: pretty commit

pretty: 
ifneq ($(which prettier), 1)
	@prettier --write * $(pages_cfg)
else
	@echo Install prettier binary.
endif