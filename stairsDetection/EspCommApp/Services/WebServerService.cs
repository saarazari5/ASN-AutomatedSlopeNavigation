using EmbedIO;
using EmbedIO.Routing;
using EmbedIO.WebApi;
using SafeGuard_API_MVC.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace EspCommApp.Services
{
    public class WebServerService
    {

        public void StartWebServer()
        {
            var server = new WebServer(o => o
                    .WithUrlPrefix("http://" + GetLocalAddress() + ":5126")
                    .WithMode(HttpListenerMode.EmbedIO))
                    .WithLocalSessionManager()
                    .WithWebApi("/", m => m.WithController(() => new AvertiController()));
            server.RunAsync();
        }
        public string GetLocalAddress()
        {
            var IpAddress = Dns.GetHostAddresses(Dns.GetHostName()).FirstOrDefault();

            if (IpAddress != null)
                return IpAddress.ToString();

            return "Could not locate IP Address";
        }

        public static string GetLocalAddress(byte i = 0)
        {
            var IpAddress = Dns.GetHostAddresses(Dns.GetHostName()).FirstOrDefault();

            if (IpAddress != null)
                return IpAddress.ToString();

            return "Could not locate IP Address";
        }
    }
    public class AvertiController : WebApiController
    {

        [Route(HttpVerbs.Get, "/test")]
        public Task<string> Get()
        {
            return Task.FromResult("OK");
        }
    }
}
