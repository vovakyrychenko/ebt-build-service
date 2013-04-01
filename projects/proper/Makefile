PACKAGE=proper
REPO=git://github.com/manopapad/${PACKAGE}.git

include ../../common.mk

prepare:
	${PACKAGE}/write_compile_flags ${PACKAGE}/include/compile_flags.hrl
	ln -s ${PACKAGE}.app.src ${PACKAGE}/src/${PACKAGE}.app
	ln -s ../ebt.config ${PACKAGE}/ebt.config
	rm -r ${PACKAGE}/test


