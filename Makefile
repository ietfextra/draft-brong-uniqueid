

build: draft-extra-imap-uniqueid.txt draft-extra-imap-uniqueid.html draft-extra-imap-uniqueid.xml

%.xml: %.mdown
	mmark -xml2 -page $< > $@

%.txt: %.xml
	xml2rfc --text $< $@

%.html: %.xml
	xml2rfc --html $< $@

clean:
	rm -f *.txt *.html *.xml
