.PHONY: \
	build \
	clean \
	test

# Constants and definitions
BUILD=build
SRC=src
TMP=tmp

MD=$(wildcard $(SRC)/*.md)
HT=$(patsubst $(SRC)/%.md, $(TMP)/%.tmpl.html, $(MD))

# Rules
default: build

clean:
	rm -rf $(TMP)
	rm -rf $(BUILD)

test: build
	prove -w t/*.t

$(TMP):
	mkdir $(TMP)

$(TMP)/%.tmpl.html:  $(SRC)/%.md $(TMP)
	markdown $< > $@

build: $(HT)
	cp -ral htdocs $(BUILD)
	ttree -f ./conf/ttree.cfg

# markdown src/servicios.md > tmp/servicios.tmpl.html
# yui-compressor --type css -o x-min.css x.css
# yui-compressor --type js  -o y-min.js  y.js

