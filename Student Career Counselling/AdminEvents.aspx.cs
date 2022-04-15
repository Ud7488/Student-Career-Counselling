using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Student_Career_Counselling
{
    public partial class AdminEvents : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO event_tbl(event_name,event_link,event_description,scholar_name,scholar_link,scholar_description) values(@event_name,@event_link,@event_description,@scholar_name,@scholar_link,@scholar_description)", con);

                cmd.Parameters.AddWithValue("@event_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@event_link", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@event_description", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@scholar_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@scholar_link", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@scholar_description", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Event and Scholarship's Details are added successfully');</script>");

                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}