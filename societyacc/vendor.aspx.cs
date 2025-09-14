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
    public partial class vendor : System.Web.UI.Page
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
            String query = "INSERT INTO vendorInfo VALUES(@vendorname,@vendortype,@charges,@additionalinfo,@payFrequency)";
            string constr =
            ConfigurationManager.ConnectionStrings["SocietyManagementConnectionString8"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    
                    cmd.Parameters.AddWithValue("@vendorname", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@vendortype", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@charges", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@additionalinfo", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@payFrequency", TextBox7.Text);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
    } 
}
    