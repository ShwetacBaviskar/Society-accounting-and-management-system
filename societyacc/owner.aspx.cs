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
    public partial class owner : System.Web.UI.Page
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
            string query = "INSERT INTO Owner VALUES(@id,@flatId,@societyId,@OwnerName,@CoOwnerName,@ContactNumber,@isResiding,@isActive)";
            string constr =
            ConfigurationManager.ConnectionStrings["SocietyManagementConnectionString8"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@id", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@flatId", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@societyId", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@OwnerName", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@CoOwnerName", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@ContactNumber", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@isResiding", CheckBox1.Checked);
                    cmd.Parameters.AddWithValue("@isActive", CheckBox2.Checked);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string query = "DELETE FROM Owner WHERE flatId=@flatId";
            string constr =
            ConfigurationManager.ConnectionStrings["SocietyManagementConnectionString8"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@id", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@flatId", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@societyId", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@OwnerName", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@CoOwnerName", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@ContactNumber", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@isResiding", CheckBox1.Checked);
                    cmd.Parameters.AddWithValue("@isActive", CheckBox2.Checked);
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

        protected void Button4_Click(object sender, EventArgs e)
        {

            string query = "UPDATE Owner SET id=@id,societyId=@societyId,OwnerName=@OwnerName,CoOwnerName=@CoOwnerName,ContactNumber=@ContactNumber,isResiding=@isResiding,isActive=@isActive WHERE flatId=@flatId";
            string constr =
                             ConfigurationManager.ConnectionStrings["SocietyManagementConnectionString8"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@id", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@flatId", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@societyId", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@OwnerName", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@CoOwnerName", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@ContactNumber", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@isResiding", CheckBox1.Checked);
                    cmd.Parameters.AddWithValue("@isActive", CheckBox2.Checked);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
            }
        }
    }
}