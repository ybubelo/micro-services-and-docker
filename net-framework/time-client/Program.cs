using System;
using System.IO;
using System.Net;
using System.Threading.Tasks;
using System.Text;

namespace time_client
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("I am net-framework!");
            var host = args[0];
            var port = args[1];
            var url = string.Format("http://{0}:{1}/api/servertime", host, port);
            while (true)
            {
                var task = ShowServerTimeAsync(url);
                try
                {
                    task.Wait();
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.ToString());
                }
            }
        }

        // https://msdn.microsoft.com/en-us/library/mt674891.aspx
        private static async Task ShowServerTimeAsync(string url)
        {
            await Task.Delay(5000);
            Console.WriteLine("GET " + url);
            var content = new MemoryStream();
            var webReq = WebRequest.CreateHttp(url);
            using (WebResponse response = await webReq.GetResponseAsync())
            {
                using (Stream responseStream = response.GetResponseStream())
                {
                    await responseStream.CopyToAsync(content);
                }
            }
            Console.WriteLine(Encoding.UTF8.GetString(content.ToArray()));
        }
    }
}
