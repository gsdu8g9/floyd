VERSION=$(shell python -c "import floyd; print floyd.get_version()")
DATE=$(shell DATE)

all: clean test build dist

test:
	python run_tests.py

build:
	@@sed -e 's/@VERSION/'"v${VERSION}"'/' -e 's/@DATE/'"${DATE}"'/' < README.tmp > README.md; \
	echo "Release v${VERSION} ${DATE} built";

dist:
	python setup.py publish

clean:
	rm -rf build
	find . -name '*.py[c|o]' -exec rm -f {} +
	
.PHONY: clean test dist