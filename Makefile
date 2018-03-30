

build: draft-ietf-extra-imap-uniqueid.txt draft-ietf-extra-imap-uniqueid.html draft-ietf-extra-imap-uniqueid.xml

%.xml: %.mdown
	mmark -xml2 -page $< > $@

%.txt: %.xml
	xml2rfc --text $< $@

%.html: %.xml
	xml2rfc --html $< $@

clean:
	rm -f *.txt *.html *.xml
