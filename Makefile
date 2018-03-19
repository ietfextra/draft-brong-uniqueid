

build: draft-brong-extra-uniqueid.txt draft-brong-extra-uniqueid.html

draft-brong-extra-uniqueid.xml: draft-brong-extra-uniqueid.mdown
	mmark -xml2 -page draft-brong-extra-uniqueid.mdown > draft-brong-extra-uniqueid.xml

draft-brong-extra-uniqueid.txt: draft-brong-extra-uniqueid.xml
	xml2rfc --text draft-brong-extra-uniqueid.xml draft-brong-extra-uniqueid.txt

draft-brong-extra-uniqueid.html: draft-brong-extra-uniqueid.xml
	xml2rfc --html draft-brong-extra-uniqueid.xml draft-brong-extra-uniqueid.html
