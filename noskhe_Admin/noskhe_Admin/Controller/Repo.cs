using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Http;
using System.Net.Http.Headers;

namespace noskhe_Admin.Controller
{
    public class Repo
    {
        public HttpClient client = new HttpClient();
        public HttpResponseMessage responseMessage = new HttpResponseMessage();
        public Repo()
        {
            client.BaseAddress = new Uri(ConnectionUrls.Main_Server_url);
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Add(ConnectionUrls.API_KEY_TYPE, ConnectionUrls.API_KEY_VALUE);
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

        }
        public async Task<bool> AddMedicon(string Name,int type)
        {

            responseMessage = await client.PostAsJsonAsync(ConnectionUrls.ROUTE + "/new-medicine", new { name = Name,type = type});

            if (responseMessage.IsSuccessStatusCode)
                return true;
            else
                return false;            
        }
        public async Task<List<Medicine>> GetAllMedicion()
        {

            responseMessage = await client.GetAsync(ConnectionUrls.ROUTE + "/all-medicines");

            if (responseMessage.IsSuccessStatusCode)
            {
                return await responseMessage.Content.ReadAsAsync<List<Medicine>>();
            }
            else
            {
                return null;
            }

        }
    }
    public static class ConnectionUrls
    {
        public static string Main_Server_url = "http://198.143.180.164:5000";
        public static string Hub_Server_url = Main_Server_url + "/NotificationHub/";
        public static string ROUTE = "/desktop-api/management";
        public static string API_KEY_TYPE = "management-api-key";
        public static string API_KEY_VALUE = "KBh9GQYY4mrJUn9u8'Agg_t!b%PN7rpYbDVe2!8zbYjTmU4D%N4`?MF6^*3DWdz|";
        public static string AUTH_TYPE = "Authorization";
        public static string AUTH_VALUE = Token.Bearer + Token.Value;
        public static string API_VALUE = "k3bKN^u9o(sW;qH8zKXp^:.=P[}`gQ'V!wJ*8CK_da%?KB~w!?V{[YxnaY*6!rs";
    }
    public static class Token
    {
        public static string Bearer = "Bearer ";
        public static string Value = @"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJuYmYiOjE1NDkxMTE0NDIsImV4cCI6MTU0OTE5Nzg0MiwiaWF0IjoxNTQ5MTExNDQyfQ.8-Kq1sueGMJDHdkvhEGloPpxmAmqMDU824BmxG-3I7c";
    }
}
