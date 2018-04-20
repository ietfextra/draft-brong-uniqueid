

build: draft-ietf-extra-imap-objectid.txt draft-ietf-extra-imap-objectid.html draft-ietf-extra-imap-objectid.xml

%.xml: %.mdown
	mmark -xml2 -page $< > $@

%.txt: %.xml
	xml2rfc --text $< $@

%.html: %.xml
	xml2rfc --html $< $@

clean:
	rm -f *.txt *.html *.xml
