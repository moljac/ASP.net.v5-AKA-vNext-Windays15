
@powershell ^
	-NoProfile ^
	-ExecutionPolicy unrestricted ^
	-Command ^
	"&{$Branch='dev';iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.ps1'))}"			

	pause
			
@IF %ERRORLEVEL% NEQ 0 PAUSE	
			