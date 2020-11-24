# vim: noet
# Run this file with "puppet apply manifests/default.pp", to apply it with
# puppet.

# The list of packages was obtained from
# https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html as of
# 2019-05-07:
#
# > sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib \
# >      build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
# >      xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev \
# >      xterm
#
# Fixes errors such as the following when invoking "bitbake":
#
# > ERROR: The following required tools (as specified by HOSTTOOLS) appear to be unavailable in PATH, please install them in order to proceed:
# >   chrpath gawk

include yocto_torta::all

class yocto_torta {
	#include yocto_torta::all

	class all {
		include yocto_torta::hosttools
	}

	class hosttools {
		package { 'gawk': ensure => installed, }
		package { 'wget': ensure => installed, }
		package { 'git-core': ensure => installed, }
		package { 'diffstat': ensure => installed, }
		package { 'unzip': ensure => installed, }
		package { 'texinfo': ensure => installed, }
		package { 'gcc-multilib': ensure => installed, }
		package { 'build-essential': ensure => installed, }
		package { 'chrpath': ensure => installed, }
		package { 'socat': ensure => installed, }
		package { 'cpio': ensure => installed, }
		package { 'python': ensure => installed, }
		package { 'python3': ensure => installed, }
		package { 'python3-pip': ensure => installed, }
		package { 'python3-pexpect': ensure => installed, }
		package { 'xz-utils': ensure => installed, }
		package { 'debianutils': ensure => installed, }
		package { 'iputils-ping': ensure => installed, }
		package { 'python3-git': ensure => installed, }
		package { 'python3-jinja2': ensure => installed, }
		package { 'libegl1-mesa': ensure => installed, }
		package { 'libsdl1.2-dev': ensure => installed, }
		package { 'xterm': ensure => installed, }
	}
}
