# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="A utility to convert Mac icons to PNG images"
HOMEPAGE="http://www.eisbox.net/dev/icns2png"
SRC_URI="http://www.eisbox.net/software/icns2png-${PV}.src.tgz -> ${P}.tar.gz"
KEYWORDS="amd64 x86"
LICENSE="GPL"
SLOT="0"
S="${WORKDIR}"/${PN}
DEPEND=""
RDEPEND="${DEPEND}
	media-libs/libpng:1.2
	sys-libs/zlib
"

src_install() {
	dodoc LICENSE README
	dobin {icns2png,icontainer2icns}
}