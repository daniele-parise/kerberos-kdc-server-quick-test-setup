install:
	cp -r kerbserver /etc;
	cp -r krbxml /etc;
	cp -r kdconf /etc;
	cp -r etckrbconf /etc;
	chmod +x /etc/kerbserver;
	cd /etc; ./kerbserver;
	echo "all done and installed"
uninstall:
	rm -rf /etc/kerbserver;
	rm -rf /etc/krbxml;
	rm -rf /etc/kdconf;
	rm -rf /etc/etckrbconf;
	echo "all done and unistalled"
.PHONY:
	install,uninstall

ifndef VERBOSE
.SILENT:
endif
