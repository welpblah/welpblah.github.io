build:
	sh ./barf
	rsync -r public/ build/public
	rsync -r fonts.css build/
	rsync -r style.css build/

clean:
	rm -rf build/*

watch:
	while true; do \
	ls -d .git/* * posts/* pages/* header.html | entr -cd make ;\
	done

.PHONY: build clean watch
