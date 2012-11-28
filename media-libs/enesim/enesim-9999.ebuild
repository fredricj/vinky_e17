# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"
SLOT="0"
inherit subversion autotools eutils
ESVN_REPO_URI="http://enesim.googlecode.com/svn/trunk/${PN}"
ESVN_PROJECT="enesim/${PN}"

DESCRIPTION="Enesim is direct rendering graphics library"
HOMEPAGE="http://code.google.com/p/enesim"
IUSE="doc equanime png jpeg freetype threads opencl opengl"
KEYWORDS=""
LICENSE="LGPL-2.1"

RDEPEND="png? ( media-libs/libpng )
	jpeg? ( virtual/jpeg )
	freetype? ( media-libs/freetype )
	>=dev-libs/eina-1.7"
DEPEND="${RDEPEND}"

src_prepare() {
	eautoreconf
}

src_configure() {
	econf \
		$(use_enable equanime)\
		$(use_enable png) \
		$(use_enable freetype) \
		$(use_enable threads pthreads) \
		$(use_enable opencl) \
		$(use_enable opengl)
}

#src_install() {
#	enlightenment_src_install
#	insinto /etc/enlightenment
#	newins "${FILESDIR}"/gentoo-sysactions.conf sysactions.conf || die
#}
