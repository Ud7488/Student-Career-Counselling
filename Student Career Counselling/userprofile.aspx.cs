using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Student_Career_Counselling
{
    public partial class userprofile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"].ToString() == "" || Session["username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("userlogin.aspx");
                }
                else
                {
                    if (!Page.IsPostBack)
                    {
                        getUserPersonalDetails();
                    }

                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("userlogin.aspx");
            }
        }

        // update button click
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "" || Session["username"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("userlogin.aspx");
            }
            else
            {
                updateUserPersonalDetails();

            }
        }

        // user defined function
        void updateUserPersonalDetails()
        {
            string password = "";
            if (TextBox10.Text.Trim() == "")
            {
                password = TextBox9.Text.Trim();
            }
            else
            {
                password = TextBox10.Text.Trim();
            }
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("update member_master_tbl set full_name=@full_name, dob=@dob, contact_no=@contact_no, email=@email, hobbies=@hobbies, interest=@interest, marks=@marks, full_address=@full_address, password=@password, account_status=@account_status WHERE member_id='" + Session["member_id"].ToString().Trim() + "'", con);

                cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@hobbies", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@interest", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@full_address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@marks", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@account_status", "pending");

                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {
                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                    getUserPersonalDetails();
                }
                else
                {
                    Response.Write("<script>alert('Invaid entry');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        public void getUserPersonalDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id='" + Session["member_id"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["full_name"].ToString();
                TextBox2.Text = dt.Rows[0]["dob"].ToString();
                TextBox3.Text = dt.Rows[0]["contact_no"].ToString();
                TextBox4.Text = dt.Rows[0]["email"].ToString();
                TextBox5.Text = dt.Rows[0]["full_address"].ToString();
                TextBox8.Text = dt.Rows[0]["member_id"].ToString();
                TextBox9.Text = dt.Rows[0]["password"].ToString();
                DropDownList2.SelectedValue = dt.Rows[0]["hobbies"].ToString().Trim();
                DropDownList3.SelectedValue = dt.Rows[0]["interest"].ToString().Trim();
                TextBox6.Text = dt.Rows[0]["marks"].ToString();
                
                Label1.Text = dt.Rows[0]["account_status"].ToString().Trim();

                if (dt.Rows[0]["account_status"].ToString().Trim() == "active")
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-success");
                }
                else if (dt.Rows[0]["account_status"].ToString().Trim() == "pending")
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-warning");
                }
                else if (dt.Rows[0]["account_status"].ToString().Trim() == "deactive")
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-danger");
                }
                else
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-info");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}