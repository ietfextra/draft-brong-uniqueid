

build: draft-gondwana-imap-uniqueid.txt draft-gondwana-imap-uniqueid.html

%.xml: %.mdown
	mmark -xml2 -page $< > $@

%.txt: %.xml
	xml2rfc --text $< $@

%.html: %.xml
	xml2rfc --html $< $@
