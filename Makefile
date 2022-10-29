.PHONY: all

all: build/simple_port build/other_program build/one_more_program

build/simple_port: src/simple_port.cpp
	@mkdir -p build
	clang++ -o build/simple_port src/simple_port.cpp

build/other_program: src/other_program.cpp
	@mkdir -p build
	clang++ -o build/other_program src/other_program.cpp

build/one_more_program: src/one_more_program.cpp
	@mkdir -p build
	clang++ -o build/one_more_program src/one_more_program.cpp

.PHONY: install
install: build/simple_port build/other_program build/one_more_program
	${INSTALL} build/simple_port ${DESTDIR}${PREFIX}/bin/simple_port
	${INSTALL} build/other_program ${DESTDIR}${PREFIX}/bin/other_program
	${INSTALL} build/one_more_program ${DESTDIR}${PREFIX}/bin/one_more_program

.PHONY: clean
clean:
	rm -rf build
