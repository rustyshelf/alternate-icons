.DEFAULT_GOAL := build
INSTALL_PATH = /usr/local/bin/embed-alternate-icons

build:
	swift package clean
	swift package --enable-prefetching update
	swift build --enable-prefetching -c release -Xswiftc -static-stdlib
	
install:
	cp -f .build/release/AlternateIcons $(INSTALL_PATH)

release:
	mkdir $(RELEASE_NAME)
	cp -f .build/release/AlternateIcons $(RELEASE_NAME)/embed-alternate-icons
	cp -f install.sh $(RELEASE_NAME)/install.sh
	chmod +x $(RELEASE_NAME)/install.sh
	tar -cvzf $(RELEASE_NAME).tar.gz $(RELEASE_NAME)

uninstall:
	rm -f $(INSTALL_PATH)
