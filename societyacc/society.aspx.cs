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
    public partial class society : System.Web.UI.Page
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

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string query = "INSERT INTO Societyinfo VALUES(@ID,@SocietyName,@Address,@RegistrationNumber,@PANNumber)";
            string constr =
            ConfigurationManager.ConnectionStrings["SocietyManagementConnectionString8"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@ID", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@SocietyName", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Address", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@RegistrationNumber", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@PANNumber", TextBox5.Text);


                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
    }
}