all: draft.html draft.txt

draft.html: draft.xml
	xml2html draft.xml > draft.html

draft.txt: draft.xml
	xml2rfc draft.xml > draft.txt
