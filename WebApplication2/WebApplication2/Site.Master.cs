using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class SiteMaster : MasterPage
    {
        public static string ConnectionString = "Server=mysql5025.site4now.net; User ID=a95df6_tccbd;Password=TCCBD1234;Database=db_a95df6_tccbd";
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        public static void ExibirAlert(Page page, string mensagem)
        {
            page.ClientScript.RegisterStartupScript(
                 page.GetType(),
                 "MessageBox" + Guid.NewGuid(),
                 "<script language='javascript'>alert('" + mensagem + "');</script>"
              );
        }
    }
}