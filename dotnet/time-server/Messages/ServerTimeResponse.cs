using System;

namespace time_server.Messages
{
    public class ServerTimeResponse
    {
        public ServerTimeResponse()
        {
            ServerTime = DateTime.UtcNow;
        }

        public DateTime ServerTime { get; private set; }
    }
}
