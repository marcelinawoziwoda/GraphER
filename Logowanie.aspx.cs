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
    public partial class Logowanie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["email"] = null;

        }


        protected void Logowanie_button_Click(object sender, EventArgs e)
        {
            SqlConnection con = null;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["GraphERConnectionString"].ConnectionString);
            con.Open();

            SqlCommand zap = new SqlCommand("Select haslo from Rejestracja_G where email like @email", con);
            SqlCommand cmd = new SqlCommand("Select count (email) from Rejestracja_G where email=@email and haslo=@haslo", con);
            cmd.Parameters.AddWithValue("@email", login1.Text);
            cmd.Parameters.AddWithValue("@haslo", haslo_log.Text);
            zap.Parameters.AddWithValue("@email", login1.Text);

            int ile = (int)cmd.ExecuteScalar();
            string txt = login1.Text;
            if (ile == 1)
            {
               
                Session["email"] = txt;

                Response.Redirect("~/SideMasterLog.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Złe hasło lub brak konta!!!";
            }

            con.Close();
        }
    }
}