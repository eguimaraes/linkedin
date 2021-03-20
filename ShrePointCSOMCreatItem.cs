using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.SharePoint.Client;

namespace RobotClientSidecarga
{
    class Program
    {
        static void Main(string[] args)
        {

            string siteUrl = args[0];


            ClientContext clientContext = new ClientContext(siteUrl);

            Web site = clientContext.Web;

            List lista = site.Lists.GetByTitle(args[1]);
            
            clientContext.Load(lista);

            clientContext.ExecuteQuery();

            ListItemCreationInformation listItemCreation=n

            ListItem item = lista.AddItem();




            

        }
    }
}
