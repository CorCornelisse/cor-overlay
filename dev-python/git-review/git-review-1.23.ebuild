# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3} )
EGIT_REPO_URI="git://github.com/openstack-infra/git-review.git"
inherit git-2 distutils-r1

DESCRIPTION="Tool to submit code to Gerrit"
HOMEPAGE="http://pypi.python.org/pypi/${PN}"
[[ ${PV} == *9999* ]] || \
	SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="dev-vcs/git
        dev-python/setuptools"
RDEPEND="${DEPEND}"

