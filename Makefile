.PHONY: mkdir all

all: mkdir build/draft-ftl-specification-00.html build/draft-ftl-specification-00.txt build/draft-ftl-specification-00.pdf

mkdir:
	-mkdir build

build/draft-ftl-specification-00.html: draft-ftl-specification-00.xml
	xml2rfc --html draft-ftl-specification-00.xml -p build

build/draft-ftl-specification-00.pdf: draft-ftl-specification-00.xml
	xml2rfc --pdf draft-ftl-specification-00.xml -p build

build/draft-ftl-specification-00.txt: draft-ftl-specification-00.xml
	xml2rfc draft-ftl-specification-00.xml -p build

clean:
	rm -r build
