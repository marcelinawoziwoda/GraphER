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
    public partial class User : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
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
            if(!IsPostBack){
                
                SqlConnection con = null;
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["GraphERConnectionString"].ConnectionString);
                con.Open();

                /* SqlCommand zap = new SqlCommand("SELECT [id],[imie],[nazwisko],[email],[telefon],[haslo],[pow_haslo],[firma],[usluga],[region] FROM [GraphER].[dbo].[Rejestracja_G]", con);
                 SqlCommand zap = new SqlCommand("SELECT [id],[imie],[nazwisko],[email],[telefon],[haslo],[pow_haslo],[firma],[usluga],[region] FROM [GraphER].[dbo].[Rejestracja_G] where email like @email", con);
                 zap.Parameters.AddWithValue("@email", Session["email"].ToString());*/
                SqlCommand zap = new SqlCommand("SELECT imie FROM [GraphER].[dbo].[Rejestracja_G] where email like @email", con);
                zap.Parameters.AddWithValue("@email", Session["email"].ToString());
                imie.Text = zap.ExecuteScalar().ToString();

                zap = new SqlCommand("SELECT nazwisko FROM [GraphER].[dbo].[Rejestracja_G] where email like @email", con);
                zap.Parameters.AddWithValue("@email", Session["email"].ToString());
                nazwisko.Text = zap.ExecuteScalar().ToString();

                zap = new SqlCommand("SELECT email FROM [GraphER].[dbo].[Rejestracja_G] where email like @email", con);
                zap.Parameters.AddWithValue("@email", Session["email"].ToString());
                email.Text = zap.ExecuteScalar().ToString();

                zap = new SqlCommand("SELECT telefon FROM [GraphER].[dbo].[Rejestracja_G] where email like @email", con);
                zap.Parameters.AddWithValue("@email", Session["email"].ToString());
                telefon.Text = zap.ExecuteScalar().ToString();

                zap = new SqlCommand("SELECT firma FROM [GraphER].[dbo].[Rejestracja_G] where email like @email", con);
                zap.Parameters.AddWithValue("@email", Session["email"].ToString());
                firma.Text = zap.ExecuteScalar().ToString();
                zap = new SqlCommand("SELECT region FROM [GraphER].[dbo].[Rejestracja_G] where email like @email", con);
                zap.Parameters.AddWithValue("@email", Session["email"].ToString());
                TextBox_reg.Text = zap.ExecuteScalar().ToString();
                zap = new SqlCommand("SELECT usluga FROM [GraphER].[dbo].[Rejestracja_G] where email like @email", con);
                zap.Parameters.AddWithValue("@email", Session["email"].ToString());
                TextBox_usl.Text = zap.ExecuteScalar().ToString();
                zap = new SqlCommand("SELECT o_mnie FROM [GraphER].[dbo].[Rejestracja_G] where email like @email", con);
                zap.Parameters.AddWithValue("@email", Session["email"].ToString());
                TextBox_o_mnie.Text = zap.ExecuteScalar().ToString();
                con.Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = null;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["GraphERConnectionString"].ConnectionString);
        con.Open();

            SqlCommand cmd = new SqlCommand("update Rejestracja_G set imie=@imie,nazwisko= @nazwisko, email=@email, telefon=@telefon, firma=@firma, usluga=@usluga, region=@region, o_mnie=@o_mnie where email like @emailss", con);
            cmd.Parameters.AddWithValue("@imie", imie.Text);
            cmd.Parameters.AddWithValue("@nazwisko", nazwisko.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@telefon", telefon.Text);
            cmd.Parameters.AddWithValue("@firma", firma.Text);
            cmd.Parameters.AddWithValue("@usluga", TextBox_usl.Text);
            cmd.Parameters.AddWithValue("@region", TextBox_reg.Text);
            cmd.Parameters.AddWithValue("@o_mnie", TextBox_o_mnie.Text);
            cmd.Parameters.AddWithValue("@emailss", Session["email"].ToString());
            cmd.ExecuteScalar();
            con.Close();
        }
    }
}