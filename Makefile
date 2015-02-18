all: test pdf/directorio.pdf

pdf/directorio.pdf: src/*.rst
	mkdir -p pdf
	rst2pdf src/main.rst -o pdf/directorio.pdf

clean:
	rm -f pdf/directorio.pdf
	- rmdir pdf
	rm -f test-cuenta_los_include_en_main

test: test-cuenta_los_include_en_main

test-cuenta_los_include_en_main: src/*.rst
	test/cuenta_los_include_en_main
	touch test-cuenta_los_include_en_main

