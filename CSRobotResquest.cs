using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.IO;


namespace RobotResquest
{
    class Program
    {
        static void Main(string[] args)
        {
                  
            WebRequest request = WebRequest.Create(args[0]);
            
            request.Method = "POST";

            byte[] byteArray = Encoding.UTF8.GetBytes(args[1]);
            
            request.ContentType = "application/x-www-form-urlencoded";
            
            request.ContentLength = byteArray.Length;
            
            Stream dataStream = request.GetRequestStream();
            
            dataStream.Write(byteArray, 0, byteArray.Length);
            
            dataStream.Close();
            
            WebResponse response = request.GetResponse();
            
            Console.WriteLine(((HttpWebResponse)response).StatusDescription);
            
            dataStream = response.GetResponseStream();
            
            StreamReader reader = new StreamReader(dataStream);
            
            string responseFromServer = reader.ReadToEnd();          


            Console.WriteLine(responseFromServer);
            
            reader.Close();
            
            dataStream.Close();
            
            response.Close();


        }
    }
}
