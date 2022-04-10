using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Student_Career_Counselling
{
    public partial class admincollegeinventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        // go button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            getCollegeByID();
        }

        // update button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            updateCollegeByID();
        }
        // delete button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteCollegeByID();
        }
        // add button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfCollegeExists())
            {
                Response.Write("<script>alert('College Already Exists, try some other College ID');</script>");
            }
            else
            {
                addNewCollege();
            }
        }

        // user defined functions
        void deleteCollegeByID()
        {
            if (checkIfCollegeExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from college_master_tbl WHERE college_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('College Deleted Successfully');</script>");

                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
        }

        void updateCollegeByID()
        {

            if (checkIfCollegeExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE college_master_tbl SET college_name=@college_name, college_description=@college_description where college_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.Parameters.AddWithValue("@college_name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@college_description", TextBox6.Text.Trim());
                  
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('College Updated Successfully');</script>");


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid College ID');</script>");
            }
        }


        void getCollegeByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from college_master_tbl WHERE college_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["college_name"].ToString();
                    TextBox6.Text = dt.Rows[0]["college_description"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid College ID');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }

        bool checkIfCollegeExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from college_master_tbl where college_id='" + TextBox1.Text.Trim() + "' OR college_name='" + TextBox2.Text.Trim() + "';", con);
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

        void addNewCollege()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO college_master_tbl(college_id,college_name,college_description) values(@college_id,@college_name,@college_description)", con);

                cmd.Parameters.AddWithValue("@college_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@college_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@college_description", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('College added successfully.');</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}