#
# Makefile to build calamares-settings-satisos deb package
#
# Written by rkarsnk
#

include VERSION

DIR=calamares-settings-satisos-${VERSION}
PKG=calamares-settings-satisos_${VERSION}
PKGNAME=${PKG}-${REVISION}

TAR=${PKG}.orig.tar.gz

deb: tarball
	cd ${DIR} && debuild -uc -us

tarball: clean
	tar cvzf ${TAR} ${DIR}

clean:
	rm -f ${TAR} ${PKGNAME}*
	rm -rf ${DIR}/debian/calamares-settings-satisos
	rm -rf ${DIR}/debian/calamares-settings-satisos.substvars
	rm -rf ${DIR}/debian/.debhelper
	rm -rf ${DIR}/debian/files

