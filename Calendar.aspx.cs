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
    public partial class Calendar : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
       

            Calendar1.SelectedDate = DateTime.Today;
            label_log.Text = (string)Session["email"];

            if (Session["email"] == null)
            {
                label_log.Visible = true;
                label_log.Text = "Niezalogowano";
                Response.Redirect("~/Logowanie.aspx");
            }
            else
            {
                label_log.Text = "Zalogowano: " + Session["email"].ToString(); ;
            }
     /*       SqlConnection con = null;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["GraphERConnectionString"].ConnectionString);
            con.Open();

            SqlCommand zap = new SqlCommand("SELECT count(email_klient) FROM Rezerwacja where email_klient like '@email_specjalista'", con);

            zap.Parameters.AddWithValue("@email_specjalista", Session["email"].ToString());

            int ile = (int)zap.ExecuteScalar();
            con.Close();
            if (ile > 0)
            {
                GridView2.Visible = true;
            }
            else
            {
                GridView2.Visible = false;
            }*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /* SqlConnection con = null;
             con = new SqlConnection(ConfigurationManager.ConnectionStrings["GraphERConnectionString"].ConnectionString);
             con.Open();

             SqlCommand zap = new SqlCommand("SELECT rezerwacja_data, rezerwacja_czas_start, rezerwacja_czas_stop FROM Rezerwacja where email_specjalista like '@email_specjalista'", con);

             zap.Parameters.AddWithValue("@email_specjalista", email_specjalista.Text);

            zap.ExecuteScalar(); */
            GridView1.Visible = true;
            czas_start.Visible = true;
            czas_koniec.Visible = true;
            godz_kon.Visible = true;
            godz_pocz.Visible = true;
            rezerwuj.Visible = true;

           // con.Close();

      

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = null;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["GraphERConnectionString"].ConnectionString);
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter();

            SqlCommand zap = new SqlCommand("Insert into Rezerwacja values (@email_specjalista, @email_klient, @rezerwacja_data, @rezerwacja_czas_start, @rezerwacja_czas_stop,'blabla') ", con);
            zap.Parameters.AddWithValue("@email_specjalista", email_specjalista.Text);
            zap.Parameters.AddWithValue("@email_klient", Session["email"].ToString());
            zap.Parameters.AddWithValue("@rezerwacja_data", Calendar1.SelectedDate.ToShortDateString());
            zap.Parameters.AddWithValue("@rezerwacja_czas_start", godz_pocz.Value);
            zap.Parameters.AddWithValue("@rezerwacja_czas_stop", godz_kon.Value);
            //zap.Parameters.AddWithValue("@opis", czas.Text);

            zap.ExecuteScalar();
            con.Close();
            GridView1.DataBind();
            GridView2.DataBind();
            GridView2.Visible = true;
        }


    }
}