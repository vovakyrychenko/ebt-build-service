all: ${PACKAGE} git-update ebt publish

git-update:
	cd ${PACKAGE} && git pull 
	
ebt:
	cd ${PACKAGE} && ebt -o ../out

${PACKAGE}: 
	git clone ${REPO} ${PACKAGE}
	make prepare

publish:
	../../publish ${PACKAGE} out/dist/*.ez

clean:
	rm -rf ${PACKAGE}
	rm -rf out
