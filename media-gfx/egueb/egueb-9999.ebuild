# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"
SLOT="0"
inherit subversion autotools
ESVN_REPO_URI="http://enesim.googlecode.com/svn/trunk/${PN}"
ESVN_PROJECT="enesim/${PN}"

DESCRIPTION="Egueb is a media library providing svg loading"
HOMEPAGE="http://code.google.com/p/enesim"
LICENSE="LGPL-2.1"
IUSE="doc"
KEYWORDS=""

RDEPEND=">=media-libs/enesim-9999
	>=dev-libs/eina-9999
	>=media-libs/etch-9999
	>=media-gfx/ender-9999"
DEPEND="${RDEPEND}"

src_prepare() {
	eautoreconf
}

src_configure() {
	econf \
		$(use_enable doc doxygen)
}

#src_install() {
#	enlightenment_src_install
#	insinto /etc/enlightenment
#	newins "${FILESDIR}"/gentoo-sysactions.conf sysactions.conf || die
#}
