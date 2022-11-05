@echo off

set projname="HostsEdit"

rmdir /s /q publish 

rmdir /s /q bin
rmdir /s /q obj

dotnet publish %projname%.csproj --nologo -c Release -r win-x64 -f net6.0 -p:PublishSingleFile=true --no-self-contained -o .\publish

rmdir /s /q bin
rmdir /s /q obj

pause