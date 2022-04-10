using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Student_Career_Counselling
{
    public partial class ContactUs : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SignUpNewMember();
        }
        void SignUpNewMember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO contact_tbl(full_name,email,phone,who,message) values(@full_name,@email,@phone,@who,@message)", con);
                cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@who", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@message", TextBox4.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Message sent Successful.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
           // ClearField();
        }
        //creating a method to clear all the input field
        //private void ClearField()
        //{
        //    TextBox1.Text = "";
        //    TextBox2.Text = "";
        //    TextBox3.Text = "";
        //    DropDownList1.SelectedItem.Value = "";
        //    TextBox4.Text = "";
        //}

        
    }
}