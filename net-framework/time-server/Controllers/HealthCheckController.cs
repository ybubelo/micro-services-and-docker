using System.Web.Http;

namespace time_server.Controllers
{
    public class HealthCheckController : ApiController
    {
        public string Get()
        {
            return "OK";
        }
    }
}
