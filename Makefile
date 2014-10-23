DEPLOY = ~/Desktop/out

debug:
	xbuild

release:
	xbuild /p:Configuration=Release

clean:
	rm -fr Greetz/bin ./Greetz/obj
	rm -fr Greetz.Tests/bin ./Greetz.Tests/obj

test: debug
	nunit-console Greetz.Tests/bin/Debug/Greetz.Tests.dll

deploy: release
	mkdir -p $(DEPLOY)/bin
	cp Greetz/bin/* $(DEPLOY)/bin
	cp Greetz/web.config $(DEPLOY)

