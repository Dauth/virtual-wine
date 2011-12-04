SCRIPTS=$(wildcard vwine-setup-py*) vwine-setup vwine-copy-env

BINDIR=$(HOME)/bin

.PHONEY: install clean
install: uninstall $(SCRIPTS)
	ln -s $(abspath $(SCRIPTS)) $(BINDIR)

uninstall:
	-rm $(foreach fn,$(SCRIPTS),$(BINDIR)/$(fn)) 2>/dev/null
