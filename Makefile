

build: draft-gondwana-imap-uniqueid.txt draft-gondwana-imap-uniqueid.html draft-gondwana-imap-uniqueid.xml

%.xml: %.mdown
	mmark -xml2 -page $< > $@

%.txt: %.xml
	xml2rfc --text $< $@

%.html: %.xml
	xml2rfc --html $< $@

clean:
	rm -f *.txt *.html *.xml
