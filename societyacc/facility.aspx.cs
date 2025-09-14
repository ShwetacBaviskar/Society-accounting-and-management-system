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
    public partial class facility : System.Web.UI.Page
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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO FacilityInfo VALUES(@Id,@SocietyId,@FacilityName,@ChargesPerDay)";
            string constr =
            ConfigurationManager.ConnectionStrings["SocietyManagementConnectionString8"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@Id", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@SocietyId", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@FacilityName", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@ChargesPerDay", TextBox4.Text);
                    


                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("information inserted");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/maintainance.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/maintainance.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
    }
}