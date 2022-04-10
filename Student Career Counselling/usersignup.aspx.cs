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
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // sign up button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckMemberExists())
            {

                Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                SignUpNewMember();
            }

        }

        // user defined method
        bool CheckMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
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
                SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl(member_id,password,full_name,dob,contact_no,email,hobbies,interest,full_address,marks) values(@member_id,@password,@full_name,@dob,@contact_no,@email,@hobbies,@interest,@full_address,@marks)", con);
                cmd.Parameters.AddWithValue("@member_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@full_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@hobbies", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@interest", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@full_address", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@marks", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            ClearField();
        }
        //creating a method to clear all the input field
        private void ClearField()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            DropDownList1.SelectedItem.Value = "";
            DropDownList2.SelectedItem.Value = "";
        }

    }
}