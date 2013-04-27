all: ${PACKAGE} git-update ebt publish

git-update:
	cd ${PACKAGE} && git pull 
	
ebt:
	cd ${PACKAGE} && ebt -o ../out

${PACKAGE}: 
	git clone ${REPO} ${PACKAGE}
	[ ! -z "${BRANCH}" ] && cd ${PACKAGE} && git checkout ${BRANCH} || echo no branch
	make prepare

publish:
	../../publish "${PACKAGE} ${REPO}" out/dist/*.ez

clean:
	rm -rf ${PACKAGE}
	rm -rf out
