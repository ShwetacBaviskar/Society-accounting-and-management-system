using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;

namespace Sociatyacc
{
    public partial class tenent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string connetionString;
            SqlConnection con;
            connetionString = @"Data Source=DESKTOP-E4DNO7H\SQLEXPRESS;Initial Catalog=SocietyManagement;Integrated Security=True";
            con = new SqlConnection(connetionString);
            con.Open();
            
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String query = "INSERT INTO tenant VALUES(@id,@flat_number,@society_id,@tenant_name,@permanant_address,@isActive)";
            string constr =
            ConfigurationManager.ConnectionStrings["SocietyManagementConnectionString8"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@id", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@flat_number", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@society_id", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@tenant_name", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@permanant_address", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@isActive", CheckBox1.Checked);

                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string query = "DELETE FROM tenant WHERE id=@id";
            string constr =
            ConfigurationManager.ConnectionStrings["SocietyManagementConnectionString8"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@id", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@flat_number", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@society_id", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@tenant_name", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@permanant_address", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@isActive", CheckBox1.Checked);

                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
    }
}