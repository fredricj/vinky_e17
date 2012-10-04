# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/eet/eet-9999.ebuild,v 1.4 2005/03/25 17:51:29 vapier Exp $

EAPI=2
ESVN_SUB_PROJECT="PROTO"
inherit enlightenment

DESCRIPTION="E object library"
HOMEPAGE="http://trac.enlightenment.org/e/wiki/Eet"

IUSE="debug doc test"

RDEPEND=">=dev-libs/eina-9999"
DEPEND="${RDEPEND}
	doc? ( app-doc/doxygen )
	test? ( dev-libs/check
		dev-util/lcov )"

src_configure() {
	enlightenment_src_configure
}

src_install() {
	enlightenment_src_install
}
