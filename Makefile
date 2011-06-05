
CWD=`pwd`

install:
	@ln -sv ${CWD}/jshintrc.json ${HOME}/.jshintrc

clean:
	@rm -v ${HOME}/.jshintrc

.PHONY: install clean

