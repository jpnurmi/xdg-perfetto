prefix=/usr

install:
	install -d $(prefix)/bin
	install -t $(prefix)/bin -m 755 perfetto
	desktop-file-install perfetto.desktop
	xdg-icon-resource install --size 256 --novendor perfetto.png
	xdg-mime install --novendor application-x-perfetto.xml

uninstall:
	rm -f $(prefix)/bin/perfetto
	rm -f $(prefix)/share/applications/perfetto.desktop
	rm -f $(prefix)/share/icons/hicolor/256x256/apps/perfetto.png
	rm -f $(prefix)/share/mime/application/x-perfetto.xml
	rm -f $(prefix)/share/mime/packages/application-x-perfetto.xml
