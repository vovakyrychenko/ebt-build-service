PACKAGE=ebt
REPO=git@github.com:vladimirk/${PACKAGE}.git

all: ${PACKAGE} git-update ebt-make publish

git-update:
	cd ${PACKAGE} && git pull 

ebt-make:
	cd ${PACKAGE} && ./make.sh

${PACKAGE}: 
	git clone ${REPO} ${PACKAGE}
	ln -s ${PACKAGE}/out out

publish:
	../../publish "${PACKAGE} ${REPO}" out/dist

clean:
	rm -rf ${PACKAGE}
	rm -rf out
