PACKAGE=ebt
REPO=git@github.com:strikead/${PACKAGE}.git

all: ${PACKAGE} git-update ebt-make publish

git-update:
	cd ${PACKAGE} && git pull 

ebt-make:
	cd ${PACKAGE} && ./make

${PACKAGE}: 
	git clone ${REPO} ${PACKAGE}
	ln -s ${PACKAGE}/out out

publish:
	../../publish "${PACKAGE} ${REPO}" out/dist/*.ez

clean:
	rm -rf ${PACKAGE}
	rm -rf out
