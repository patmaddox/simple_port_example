.PHONY: all
all:
	@mkdir -p build
	clang++ -o build/main main.cpp

.PHONY: install
install:
	${INSTALL} build/main ${DESTDIR}${PREFIX}/bin/simple_port

.PHONY: clean
clean:
	rm -rf build
