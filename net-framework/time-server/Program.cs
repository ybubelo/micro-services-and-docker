using System;
using Microsoft.Owin.Hosting;

namespace time_server
{
    class Program
    {
        static void Main(string[] args)
        {
            var baseAddress = "http://+:8080/";
            using (WebApp.Start<Startup>(url: baseAddress))
            {
                Console.WriteLine("Listening on: {0}", baseAddress);
                while(true)
                {
                    Console.Read();
                }
            }
        }
    }
}
