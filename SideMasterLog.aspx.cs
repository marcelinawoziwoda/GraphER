using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class SideMasterLog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            label_log.Text = (string)Session["email"];

            if (Session["email"] == null)
            {
                label_log.Visible = true;
                label_log.Text = "Niezalogowano";
                //Response.Redirect("~/Logowanie.aspx");
            }
            else
            {
                label_log.Text = "Zalogowano: " + Session["email"].ToString(); ;
            }
        }

    }
}