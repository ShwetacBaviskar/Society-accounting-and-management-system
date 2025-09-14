using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
namespace Sociatyacc
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection con;
            connetionString = @"Data Source=DESKTOP-E4DNO7H\SQLEXPRESS;Initial Catalog=SocietyManagement;Integrated Security=True";
            con = new SqlConnection(connetionString);
            con.Open();
            Response.Write("Connection MAde");
            con.Close();
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO userin VALUES(@username,@address,@contact_no,@password)";
            string constr =
            ConfigurationManager.ConnectionStrings["SocietyManagementConnectionString8"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@address", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@password", TextBox4.Text);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string query = "UPDATE userin SET username=@username,address=@address,contact_no=@contact_no,password=@password WHERE Username=@username";
            string constr =
                             ConfigurationManager.ConnectionStrings["SocietyManagementConnectionString8"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@address", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@password", TextBox4.Text);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string query = "DELETE FROM userin WHERE Username=@username";
            string constr =
            ConfigurationManager.ConnectionStrings["SocietyManagementConnectionString8"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@address", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@password", TextBox4.Text);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");

        }

        
    }
}

    
