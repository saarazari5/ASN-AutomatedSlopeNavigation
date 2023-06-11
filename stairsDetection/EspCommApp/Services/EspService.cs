using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace EspCommApp.Services
{
    public class EspService
    {
        private static HttpClient client = new HttpClient() { BaseAddress = new Uri("http://192.168.23.179/stair") };
        public static async Task<string> ContactESP(bool walking)
        {
            try
            {
                string status = "no-stair";
                if (walking)
                    status = "stair";
                HttpRequestMessage httpRequestMessage = new HttpRequestMessage(HttpMethod.Get, status);
                HttpResponseMessage response = await client.SendAsync(httpRequestMessage);
                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    
                    return content;
                }
                else
                {
                    return null;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}
