PREFIX?=$(DESTDIR)/usr/local
BINDIR?=$(PREFIX)/bin
SHRDIR?=$(PREFIX)/share

install:
	install -D bin/petty '$(BINDIR)'/petty
	install -D bin/xsession '$(BINDIR)'/xsession
	install -D sessions/xsession '$(SHRDIR)'/sessions/xsession

	if [ -n '$(ETCSHELLS)' ] && [ ! "`grep -F '$(BINDIR)'/petty '$(ETCSHELLS)'`" ]; then echo '$(BINDIR)/petty' >>'$(ETCSHELLS)'; fi

uninstall:
	-rm -f '$(BINDIR)'/petty
	-rm -f '$(BINDIR)'/xsession
	-rm -f '$(SHRDIR)'/sessions/xsession

	-rmdir '$(SHRDIR)'/sessions

	-if [ -n '$(ETCSHELLS)' ] && [ "`grep -F '$(BINDIR)'/petty '$(ETCSHELLS)'`" ]; then ex '+g#$(BINDIR)/petty#d' -cwq '$(ETCSHELLS)'; fi

.PHONY: install uninstall
