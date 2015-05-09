using Microsoft.AspNet.Builder;
using Microsoft.AspNet.Routing;
using Microsoft.Framework.DependencyInjection;

namespace HelloMvc
{
    public class Startup
    {
        public void Configure(IApplicationBuilder app)
        {
            app.UseErrorPage();

            app.UseServices(services =>
            { 
                app
                services.AddMvc();
            });

            app.
            /*
            app.UseMvc
            (
                    routes =>
                    {
                        routes.MapRoute(
                            name: "default",
                            template: "{controller}/{action}/{id?}",
                            defaults: new { controller = "Home", action = "Index" });
                    }
            );
            */

            app.UseMvc();

            app.UseWelcomePage();
        }       
    }
}