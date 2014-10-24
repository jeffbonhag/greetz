DEPLOY = ~/Desktop/out

debug: deps
	xbuild

release: deps
	xbuild /p:Configuration=Release

deps:
	wget -nc http://nuget.org/nuget.exe
	mono nuget.exe restore Greetz.sln

clean:
	rm -fr Greetz/bin ./Greetz/obj
	rm -fr Greetz.Tests/bin ./Greetz.Tests/obj

test: debug
	nunit-console Greetz.Tests/bin/Debug/Greetz.Tests.dll

deploy: release
	mkdir -p $(DEPLOY)/bin
	cp Greetz/bin/* $(DEPLOY)/bin
	cp Greetz/web.config $(DEPLOY)

