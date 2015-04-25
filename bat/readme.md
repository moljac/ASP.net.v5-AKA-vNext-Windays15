
# Batch scripts for preparing ASP.net v5 


## References

*	[http://weblogs.asp.net/imranbaloch/k-kvm-kpm-klr-kre-in-asp-net-vnext](http://weblogs.asp.net/imranbaloch/k-kvm-kpm-klr-kre-in-asp-net-vnext)
*	[http://blog.jsinh.in/hosting-asp-net-5-web-application-on-linux/#.VTTbPteSzhc](http://blog.jsinh.in/hosting-asp-net-5-web-application-on-linux/#.VTTbPteSzhc)


`
	kvm list
	k --version

	cd $HOME/ASP.net.v5-AKA-vNext-Windays15/src-samples/webapps-websites/01-HelloWeb/

	kpm restore

	ifconfig ; export KRE_TRACE=1 ; k web-nowin
	# http://192.168.66.29:8000/
	
	ifconfig ; export KRE_TRACE=1 ; k web-kestrel

	dnu restore
`
	
	
	
## Troubleshooting


### Kestrel Error: System.InvalidOperationException: Unable to load libuv.

#### [Re]SolutionCompile libuv:

[/linux/asp-net-v5-vNext/servers/install-kestrel-libuv.sh](/linux/asp-net-v5-vNext/servers/install-kestrel-libuv.sh)
	

	System.InvalidOperationException: Unable to load libuv. Make sure libuv is installed and available as libuv.so.1
  	at Microsoft.AspNet.Server.Kestrel.Networking.Libuv.Load (System.String dllToLoad) <0xb4d9cb68 + 0x000bc> in <filename unknown>:0
  	at Microsoft.AspNet.Server.Kestrel.KestrelEngine..ctor (ILibraryManager libraryManager) <0xb4d9b928 + 0x003db> in <filename unknown>:0
  	at Kestrel.ServerFactory.Start (IServerInformation serverInformation, System.Func`2 application) <0xb4d9b208 + 0x0011b> in <filename unknown	
  	
  	
