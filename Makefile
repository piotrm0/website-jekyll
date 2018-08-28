serve:
	open public_html/index.html; true
	cd public_html_src; make serve

public_html: public_html_src
	cd public_html_src; make build

publish: public_html
	echo "hi"

clean:
	rm -Rf public_html; true
