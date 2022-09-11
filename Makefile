#
# Makefile
# Copyright (C) Nils Weber
#
# Licensed under MIT

XDG_CONFIG_HOME ?= ~/.config
PRUSA_SLICER_CONFIG_DIR := $(XDG_CONFIG_HOME)/PrusaSlicer

stow_cmd := stow -t $(PRUSA_SLICER_CONFIG_DIR) --ignore Makefile
dirs_src := filament print
dirs_dst := $(foreach dir,$(dirs_src),$(PRUSA_SLICER_CONFIG_DIR)/$(dir))

install:
	@rm -d $(dirs_dst) 2> /dev/null || true
	$(stow_cmd) .

uninstall:
	$(stow_cmd) -D .
	@mkdir $(dirs_dst) 2> /dev/null || true
