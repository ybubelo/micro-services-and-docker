using System;
using Microsoft.AspNetCore.Mvc;
using time_server.Messages;

namespace time_server.Controllers
{
    [Route("api/[controller]")]
    public class HealthCheckController : Controller
    {
        [HttpGet]
        public string Get()
        {
            return "OK";
        }
    }
}
