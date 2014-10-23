debug:
	xbuild

release:
	xbuild /p:Configuration=Release

clean:
	rm -fr ./Greetz/{bin,obj}
	rm -fr ./Greetz.Tests/{bin,obj}

test: debug
	nunit-console ./Greetz.Tests/bin/Debug/Greetz.Tests.dll
