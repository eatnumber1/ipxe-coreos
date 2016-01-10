.PHONY: all install ipxe

all: install

ipxe:
	$(MAKE) -C ipxe/src bin/10222000.rom EMBED=../../coreos.ipxe

install:
	gsutil -h "Cache-Control:private" cp -a public-read coreos.ipxe ignition.json 'gs://eatnumber1-ipxe/'
