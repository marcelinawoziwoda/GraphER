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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = null;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["GraphERConnectionString"].ConnectionString);
            con.Open();

            SqlCommand zap = new SqlCommand("Select email from Rejestracja_G where email like @email", con);
            
            zap.Parameters.AddWithValue("@email", email_specjalista.Text);

            zap.ExecuteScalar();
            GridView1.Visible = true;

            con.Close();
            
            

            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = null;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["GraphERConnectionString"].ConnectionString);
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter();

            SqlCommand zap = new SqlCommand("Insert into Rezerwacja values (@email_specjalista, @email_klient, @rezerwacja_data, @rezerwacja_czas_start, @rezerwacja_czas_stop, opis) ", con);
           // zap.Parameters.AddWithValue("@email_specjalista", rezerwacja.Text);
           // zap.Parameters.AddWithValue("@email_klient", czas.Text);
           // zap.Parameters.AddWithValue("@rezerwacja_data", rezerwacja.Text);
            //zap.Parameters.AddWithValue("@rezerwacja_czas_start", czas.Text);
            //zap.Parameters.AddWithValue("@rezerwacja_czas_stop", rezerwacja.Text);
            //zap.Parameters.AddWithValue("@opis", czas.Text);

            zap.ExecuteScalar();
            con.Close();
        }
    }
}