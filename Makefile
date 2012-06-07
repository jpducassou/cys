.PHONY: \
	build \
	clean \
	test

# Constants and definitions
BUILD=build

# Rules
default: build

clean:
	rm -rf $(BUILD)

test: build
	prove -w t/*.t

build:
	mkdir -p $(BUILD)/ || true > /dev/null 2>&1
	perl build.pl --sourcepath=$(SOURCE) --buildpath=$(BUILD)

