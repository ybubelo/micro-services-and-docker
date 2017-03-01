using System.Web.Http;
using time_server.Messages;

namespace time_server.Controllers
{
    public class ServerTimeController : ApiController
    {
        public ServerTimeResponse Get()
        {
            return new ServerTimeResponse();
        }
    }
}
