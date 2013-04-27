PACKAGE=yaws
REPO=git@github.com:klacke/${PACKAGE}.git

include ../../common.mk

prepare:
	ln -s ${PACKAGE}.app.src ${PACKAGE}/src/${PACKAGE}.app
	ln -s ../ebt.config ${PACKAGE}/ebt.config
	cd ${PACKAGE} && scripts/rebar-pre-script

