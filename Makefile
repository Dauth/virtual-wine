.PHONY: all scripts

BINDIR = ~/bin
SHAREDSTATEDIR = ~/share

SCRIPTS = vwine-setup vwine-copy-env vwine-setup-install

all: install-scripts

clean: clean-scripts

install-scripts: clean-scripts
	for script in $(SCRIPTS); do
		ln -s $(abspath $$script) $(BINDIR)
	done

clean-scripts:
	rm -rf $(addprefix $(BINDIR)/,$(SCRIPTS))
