using Microsoft.Ajax.Utilities;
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
    public partial class Rejestracja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       
        protected void Rejestracja_button_Click(object sender, EventArgs e)
        {
            SqlConnection con = null;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["GraphERConnectionString"].ConnectionString); 
            con.Open(); 
            Label1.Visible = true;
            SqlDataAdapter adapter = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand("Insert into Rejestracja_G values(@imie, @nazwisko, @email, @telefon, @haslo, @pow_haslo, @firma, @usluga, @region,'')", con);
            Label1.Visible = true;
            cmd.Parameters.AddWithValue("@imie", imie.Text);
            cmd.Parameters.AddWithValue("@nazwisko", nazwisko.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@telefon", telefon.Text);
            cmd.Parameters.AddWithValue("@haslo", haslo.Text);
            cmd.Parameters.AddWithValue("@pow_haslo", haslo2.Text);
            cmd.Parameters.AddWithValue("@firma", firma.Text);
            cmd.Parameters.AddWithValue("@usluga", usluga.Text);
            cmd.Parameters.AddWithValue("@region", region.Text);
            SqlCommand zap = new SqlCommand("Select count (email) from Rejestracja_G where email=@email", con);

            zap.Parameters.AddWithValue("@email", email.Text);
            int a = (int)zap.ExecuteScalar();
            if (a > 0)
            {
                Label1.Visible = true;
                Label1.Text = "Taki e-mail już istnieje w bazie!";
            }
            else
            {
                adapter.InsertCommand = cmd;
                adapter.InsertCommand.ExecuteNonQuery();
                Session["email"] = email.Text;
                Response.Redirect("~/Logowanie.aspx");
            }

            con.Close();

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            
            SqlConnection con = null;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["GraphERConnectionString"].ConnectionString);
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand("Insert into Rejestracja_G values(@imie, @nazwisko, @email, @telefon, @haslo, @pow_haslo, @firma, @usluga, @region)", con);
            cmd.Parameters.AddWithValue("@imie", imie.Text);
            cmd.Parameters.AddWithValue("@nazwisko", nazwisko.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@telefon", telefon.Text);
            cmd.Parameters.AddWithValue("@haslo", haslo.Text);
            cmd.Parameters.AddWithValue("@pow_haslo", haslo2.Text);
            cmd.Parameters.AddWithValue("@firma", firma.Text);
            cmd.Parameters.AddWithValue("@usluga", usluga.Text);
            cmd.Parameters.AddWithValue("@region", region.Text);

            if (CheckBox1.Checked)
            {

                SqlCommand cmd_spec = new SqlCommand("Insert into Rezerwacja(email_specjalista) values(@email_specjalista)", con);
                    cmd_spec.Parameters.AddWithValue("@email_specjalista", email.Text);
                    adapter.InsertCommand = cmd;
                    adapter.InsertCommand.ExecuteNonQuery();
                    cmd_spec.ExecuteNonQuery();
                    Session["email"] = email.Text;
                    Response.Redirect("~/Logowanie.aspx");
            }
            else
            {

                Session["email"] = email.Text;
                 Response.Redirect("~/Logowanie.aspx");
            }


            con.Close();
        }
        
    }
}
