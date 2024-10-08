CURRENT_DIR=$(shell pwd)
DIST_DIR=${CURRENT_DIR}/dist

NAME=hello
ARCH=x86_64
VERSION=0.1.0
RELEASE=SNAPSHOT.1

prepare: build
	mkdir -p rpmbuild/SOURCES
	mkdir -p ${DIST_DIR}/$(NAME)-$(VERSION)
	cp -r pkg/* ${DIST_DIR}/$(NAME)-$(VERSION)
	tar -czvf rpmbuild/SOURCES/$(NAME)-$(VERSION).tar.gz -C ${DIST_DIR} $(NAME)-$(VERSION)

rpm-build: prepare
	rpmbuild -bb $(NAME).spec \
		--define "_topdir ${CURRENT_DIR}/rpmbuild" \
		--define "SRC ${CURRENT_DIR}" \
		--define "VERSION_NUMBER $(VERSION)" \
		--define "RELEASE_NUMBER $(RELEASE)"
	mv rpmbuild/RPMS/$(ARCH)/$(NAME)-$(VERSION)-$(RELEASE).$(ARCH).rpm $(DIST_DIR)

build:
	mkdir -p pkg
	gcc -g -o pkg/hello hello.c

clean:
	rm -rf ${DIST_DIR}
	rm -rf rpmbuild
	rm -rf pkg
	rm -f $(NAME)-$(VERSION)-$(RELEASE).$(ARCH).rpm

rpm-lint:
	rpmlint -c .rpmlintrc.toml $(NAME).spec
