README.md: make-readme-markdown.el diffview.el
	emacs --script $< < diffview.el >$@

make-readme-markdown.el:
	wget -q -O $@ https://raw.github.com/mgalgs/make-readme-markdown/master/make-readme-markdown.el

.INTERMEDIATE: make-readme-markdown.el
.PHONY: README.md
