PREFIX?=$(DESTDIR)/usr/local
BINDIR?=$(PREFIX)/bin
SHRDIR?=$(PREFIX)/share

install:
	install -D bin/petty $(BINDIR)/petty
	install -D bin/xsession $(BINDIR)/xsession
	install -D sessions/xsession $(SHRDIR)/sessions/xsession

	if [ ! "`grep $(BINDIR)/petty /etc/shells`" ]; then echo "$(BINDIR)/petty" >>/etc/shells; fi

uninstall:
	-rm -f $(BINDIR)/petty
	-rm -f $(BINDIR)/xsession
	-rm -f $(SHRDIR)/sessions/xsession

	-rmdir $(SHRDIR)/sessions

	-ex "+g#$(BINDIR)/petty#d" -cwq /etc/shells

.PHONY: install uninstall
