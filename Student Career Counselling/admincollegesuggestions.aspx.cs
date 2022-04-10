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
    public partial class admincollegesuggestions : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        // suggest College
        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (checkIfCollegeExist() && checkIfMemberExist())
            {

                if (checkIfSuggestionEntryExist())
                {
                    Response.Write("<script>alert('This college is already suggested to the Member.');</script>");
                }
                else
                {
                    suggestCollege();
                }

            }
            else
            {
                Response.Write("<script>alert('Wrong College ID or Member ID');</script>");
            }
        }

        // remove the collge suggestion if its already in the suggestion list.
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfCollegeExist() && checkIfMemberExist())
            {

                if (checkIfSuggestionEntryExist())
                {
                    removeAlreadySuggestedCollege();
                }
                else
                {
                    Response.Write("<script>alert('This Entry does not exist');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Wrong College ID or Member ID');</script>");
            }
        }

        // go button click event for college
        protected void Button3_Click(object sender, EventArgs e)
        {
            getCollegeNames();
        }

        // go button click event for course
        protected void Button4_Click(object sender, EventArgs e)
        {
            getCourseNames();
        }

        // user defined function
        void removeAlreadySuggestedCollege()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Delete from college_suggestion_tbl WHERE college_id='" + TextBox7.Text.Trim() + "' AND member_id='" + TextBox2.Text.Trim() + "'", con);
                int result = cmd.ExecuteNonQuery();

                if (result > 0)
                {
                    Response.Write("<script>alert('Suggested College Removed Successfully');</script>");
                    GridView1.DataBind();

                    con.Close();
                }
                else
                {
                    Response.Write("<script>alert('Error - Invalid details');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void suggestCollege()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO college_suggestion_tbl(member_id,member_name,college_id,college_name,course_id,course_name) values(@member_id,@member_name,@college_id,@college_name,@course_id,@course_name)", con);

                cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@member_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@college_id", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@college_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@course_id", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@course_name", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('College Suggested Successfully');</script>");

                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool checkIfCollegeExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from college_master_tbl WHERE college_id='" + TextBox7.Text.Trim() + "'", con);
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
                return false;
            }

        }

        bool checkIfMemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select full_name from member_master_tbl WHERE member_id='" + TextBox2.Text.Trim() + "'", con);
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
                return false;
            }

        }

        bool checkIfSuggestionEntryExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from college_suggestion_tbl WHERE member_id='" + TextBox2.Text.Trim() + "' AND college_id='" + TextBox7.Text.Trim() + "'", con);
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
                return false;
            }

        }

        void getCollegeNames()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select college_name from college_master_tbl WHERE college_id='" + TextBox7.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0]["college_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong College ID');</script>");
                }

                cmd = new SqlCommand("select full_name from member_master_tbl WHERE member_id='" + TextBox2.Text.Trim() + "'", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong User ID');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void getCourseNames()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select course_name from course_master_tbl WHERE course_id='" + TextBox5.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox6.Text = dt.Rows[0]["course_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong Course ID');</script>");
                }

                cmd = new SqlCommand("select full_name from member_master_tbl WHERE member_id='" + TextBox2.Text.Trim() + "'", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong User ID');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}