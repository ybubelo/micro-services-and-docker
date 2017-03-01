using Owin;
using System.Web.Http;

namespace time_server
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            var config = new HttpConfiguration();
            config.Routes.MapHttpRoute(
                    name: "DefaultApi",
                    routeTemplate: "api/{controller}"
                );
            app.UseWebApi(config);
        }
    }
}
