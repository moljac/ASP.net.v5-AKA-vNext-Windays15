# ASP.net.v5-AKA-vNext-Windays15

Miljenko Cvjetko moljac

ASP.net.v5-AKA-vNext-Windays15

## Facts

*	runtime CLR - mono (.net, CoreCLR)
*	ASP.net
	* 	version manager	
		kvm		
		dnvm
	*	package manager (nuget)
		kpm
		dnu
	*	execution environment		
		Microsoft .NET Execution environment		
		The DNX (a .NET Execution Environment) contains the code 
		required to bootstrap and run an application, including the 
		compilation system, SDK tools, and the native CLR hosts.			
		k
		k --version
		dnx
		
		
## CLR Runtime ( mono = .net / netfx)

*	mono		
	v > 3.4.1	
	*	2015-04-20	
		*	4.1.0 from source	
		*	3.12.1 from package
*	CoreCLR		(near/far future)	


#### Installation
	
## ASP.net v.5
	

### Installation

*	script
	*	Linux - bash 
	*	Windows - powershell
*	package manager

*	version			
	*	master	v.1.0.0-beta3		
	*	dev		v.1.0.0-beta5		
		nuget feed: https://www.myget.org/F/aspnetvnext
*	requirements (minimal)		
	*	Windows 7 / Windows Server 2008 R2		
		netfx 4.5.1 for IIS hosting
	*	linux		
		any distro		
		mono >= 3.4.1		
		*	curl/wget		
		*	git		
		*	shell (bash/zsh)		
	*	MacOSX 			
		mono >= 3.4.1		
		*	brew (Homebrew formula)		
		*	Xamarin Studio (Monodevelop)		


## Development Tools

### OmniSharp

[http://www.omnisharp.net/](http://www.omnisharp.net/)

*	purpose
	*	intellisense/autocomplete
*	architecture
	*	HTTP server
		[https://github.com/OmniSharp/omnisharp-server](https://github.com/OmniSharp/omnisharp-server)
	*	clients as editor plugins
		*	sublime
		*	atom
		*	brackets
		*	emacs
		*	vi
		

### Editors

#### Sublime Text 3

*	Package Control - plugins:
	*	Kulture
	*	OmniSharp
	*	C# snippets [optional]
	*	actions:
		*	Optionally change C# language settings 		
			to launch Intellisense on . and <.
		*	Optionally install a C# Snippets package.
*	on WIndows
	*	install Python and add to %PATH%
		
#### Atom

* 	install packages:
	*	Autocomplete Plus
	*	Omnisharp Atom 
	*	[https://github.com/OmniSharp/omnisharp-atom/wiki](https://github.com/OmniSharp/omnisharp-atom/wiki)

#### Brackets


#### Emacs


#### vim






			
dnx

dnvm

The .NET SDK Manager, a set of command line utilities to update and configure 
which runtime (KRE) to use.


%USERPROFILE%\.kre




	*	omnisharp		
		[http://www.omnisharp.net/](http://www.omnisharp.net/)			
		[https://github.com/omnisharp](https://github.com/omnisharp)			
		*	omnisharp
			* 	purpose
			*	components
				*	server
					[]()
				*	client (in editor)
		*	omnisharp-vim
	
	*	Atom
	*	Brackets	
	*	sublime text 3		
		http://www.sublimetext.com/3		
			
		*	package control		
			[https://packagecontrol.io/](https://packagecontrol.io/)		
			install
			*	sublime packages to install:
				*	Kulture
				*	OmniSharp
					[http://omnisharp-sublime.readthedocs.org/en/latest/](http://omnisharp-sublime.readthedocs.org/en/latest/)
				*	c# snippets
			
		
		


## http://weblogs.asp.net/imranbaloch/k-kvm-kpm-klr-kre-in-asp-net-vnext
## http://blog.jsinh.in/hosting-asp-net-5-web-application-on-linux/#.VTTbPteSzhc


kvm list
k --version

cd $HOME/ASP.net.v5-AKA-vNext-Windays15/src-samples/webapps-websites/01-HelloWeb/

	kpm restore

	ifconfig ; export KRE_TRACE=1 ; k web-nowin
	# http://192.168.66.29:8000/
	
	ifconfig ; export KRE_TRACE=1 ; k web-kestrel

	dnu restore

	
	
	
	
	
	
	
	
	
	
Kestrel

	
System.InvalidOperationException: Unable to load libuv. Make sure libuv is installed and available as libuv.so.1
  at Microsoft.AspNet.Server.Kestrel.Networking.Libuv.Load (System.String dllToLoad) <0xb4d9cb68 + 0x000bc> in <filename unknown>:0
  at Microsoft.AspNet.Server.Kestrel.KestrelEngine..ctor (ILibraryManager libraryManager) <0xb4d9b928 + 0x003db> in <filename unknown>:0
  at Kestrel.ServerFactory.Start (IServerInformation serverInformation, System.Func`2 application) <0xb4d9b208 + 0x0011b> in <filename unknown			
