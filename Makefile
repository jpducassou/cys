.PHONY: \
	build \
	clean \
	test

# Constants and definitions
BUILD=build
SRC=src
TMP=tmp

# Rules
default: build

clean:
	rm -rf $(BUILD)

test: build
	prove -w t/*.t

$(TMP):
	mkdir $(TMP)

$(SRC)/%.md : $(BUILD)/%.html $(TMP)
	markdown $< > $@

build: $(SRC)/%.md
	find src -name *.md -type f -execdir markdown {} \> tmp/{}.tmpl.html\;
	ttree -f ./conf/ttree.cfg

# markdown src/servicios.md > tmp/servicios.tmpl.html
# yui-compressor --type css -o x-min.css x.css
# yui-compressor --type js  -o y-min.js  y.js

