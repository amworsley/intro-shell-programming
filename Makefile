shell-programing.html: shell-programing.md
	darkslide -d $@ $?

clean:
	rm *.html
