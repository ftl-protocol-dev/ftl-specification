.PHONY: mkdir all

all: mkdir docs/index.html docs/draft-ftl-specification-00.html docs/draft-ftl-specification-00.txt docs/draft-ftl-specification-00.pdf

mkdir:
	@-mkdir docs 2> /dev/null

docs/draft-ftl-specification-00.html: draft-ftl-specification-00.xml
	xml2rfc --html draft-ftl-specification-00.xml -p docs

docs/draft-ftl-specification-00.pdf: draft-ftl-specification-00.xml
	xml2rfc --pdf draft-ftl-specification-00.xml -p docs

docs/draft-ftl-specification-00.txt: draft-ftl-specification-00.xml
	xml2rfc -P draft-ftl-specification-00.xml -p docs

docs/index.html:
	ln -s draft-ftl-specification-00.html docs/index.html

clean:
	rm -r docs
