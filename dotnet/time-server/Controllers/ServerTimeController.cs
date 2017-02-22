﻿using Microsoft.AspNetCore.Mvc;
using time_server.Messages;

namespace time_server.Controllers
{
    [Route("api/[controller]")]
    public class ServerTimeController : Controller
    {
        [HttpGet]
        public ServerTimeResponse Get()
        {
            return new ServerTimeResponse();
        }
    }
}
