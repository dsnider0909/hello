

hello:
	gcc -g -o hello hello.c

clean:
	rm hello

install:
	echo 'make install'
	env | grep RPM
	echo "DESTDIR:", $(DESTDIR)
	mkdir -p $(DESTDIR)/usr/bin
	install -m 0744 hello $(DESTDIR)/usr/bin/hello
