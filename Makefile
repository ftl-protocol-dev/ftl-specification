.PHONY: mkdir all

all: mkdir build/draft-ftl-specification-00.html build/draft-ftl-specification-00.txt build/draft-ftl-specification-00.pdf docs/ftl-specification/index.html

mkdir:
	-mkdir build docs docs/ftl-specification

build/draft-ftl-specification-00.html: draft-ftl-specification-00.xml
	xml2rfc --html draft-ftl-specification-00.xml -p build

build/draft-ftl-specification-00.pdf: draft-ftl-specification-00.xml
	xml2rfc --pdf draft-ftl-specification-00.xml -p build

build/draft-ftl-specification-00.txt: draft-ftl-specification-00.xml
	xml2rfc draft-ftl-specification-00.xml -p build

docs/ftl-specification/index.html: build/draft-ftl-specification-00.html
	cp build/draft-ftl-specification-00.html docs/ftl-specification/index.html

clean:
	rm -r build
