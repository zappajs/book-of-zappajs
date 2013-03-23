all: book.pdf

book.md:
	cat [0-9]*.md > book.md

%.pdf: %.md
	# Add revision qrcode
	cp $< rev-$<
	echo >> rev-$<
	qrencode -o qr-$(basename $<).png "`git rev-list HEAD -- $< | head -1`"
	echo "Document Revision: `git rev-list HEAD -- $< | head -1` ![revision](qr-$(basename $<).png)" >> rev-$<
	# Build document
	pandoc --latex-engine xelatex -V mainfont='Gillius ADF' -V monofont='Inconsolata' -o $@ --toc -s -S --normalize rev-$<
	# Clean-up
	rm -f rev-$< qr-$(basename $<).png

clean:
	rm -f book.md book.pdf
