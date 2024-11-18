serve:
	open public_html/index.html; true
	cd public_html_src; make serve

install:
	cd public_html_src; bundle install

public_html: public_html_src
	cd public_html_src; make build

copy: public_html
	cp -R public_html/* ../piotrm0.github.io

publish: public_html
	make copy
	cd ../piotrm0.github.io; \
	git stage -u; \
	git commit . -m "updating website"; \
	git push

clean:
	rm -Rf public_html; true
