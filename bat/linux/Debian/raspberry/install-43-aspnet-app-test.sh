#/bin/bash

ifconfig eth0 | grep inet | awk '{ print $2}'
 
export DOMAIN=holisticware.net
export HOST_HTTP=test-aspnet-v5-01.$DOMAIN

ls -al \
        /var/www/$HOST_HTTP
    
cd /var/www/$HOST_HTTP/


sudo \
    sh -c \
    "echo \
    '
{
  \"dependencies\": 
  {
      \"Kestrel\": \"1.0.0-beta4\",
      \"Microsoft.AspNet.Diagnostics\": \"1.0.0-beta4\",
      \"Microsoft.AspNet.Hosting\": \"1.0.0-beta4\",
      \"Microsoft.AspNet.Server.WebListener\": \"1.0.0-beta4\",
      \"Microsoft.AspNet.StaticFiles\": \"1.0.0-beta4\"
  },
  \"frameworks\": 
  {
     \"dnx451\": { },
     \"dnxcore50\": { },
  },
  \"commands\": 
  {
      \"kestrel\": \"Microsoft.AspNet.Hosting --server Kestrel --server.urls http://localhost:5004\"
  }
}
    ' \
    > project.json
    "

cat \
    project.json
    
    
    
    
sudo \
    sh -c \
    "echo \
    '
using Microsoft.AspNet.Builder;
namespace HostKWebOnLinux
{
    public class Startup
    {
        public void Configure(IApplicationBuilder app)
        {
            app.UseStaticFiles();
            app.UseWelcomePage();
        }
    }
}
    ' \
    > Startup.cs
    "

cat \
    Startup.cs
    
        