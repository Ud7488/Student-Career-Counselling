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
        static string global_filepath;
        static int global_actual_stock, global_current_stock, global_issued_books;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillCounselorCourseValues();
            }

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

                    //int actual_stock = Convert.ToInt32(TextBox4.Text.Trim());
                    //int current_stock = Convert.ToInt32(TextBox5.Text.Trim());

                    //if (global_actual_stock == actual_stock)
                    //{

                    //}
                    //else
                    //{
                    //    if (actual_stock < global_issued_books)
                    //    {
                    //        Response.Write("<script>alert('Actual Stock value cannot be less than the Issued books');</script>");
                    //        return;


                    //    }
                    //    else
                    //    {
                    //        current_stock = actual_stock - global_issued_books;
                    //        TextBox5.Text = "" + current_stock;
                    //    }
                    //}

                    //string genres = "";
                    //foreach (int i in ListBox1.GetSelectedIndices())
                    //{
                    //    genres = genres + ListBox1.Items[i] + ",";
                    //}
                    //genres = genres.Remove(genres.Length - 1);

                    //string filepath = "~/college_inventory/books1";
                    //string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    //if (filename == "" || filename == null)
                    //{
                    //    filepath = global_filepath;

                    //}
                    //else
                    //{
                    //    FileUpload1.SaveAs(Server.MapPath("book_inventory/" + filename));
                    //    filepath = "~/book_inventory/" + filename;
                    //}

                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE college_master_tbl set college_name=@college_name, counselor_name=@counselor_name, course_name=@course_name, college_description=@college_description, college_img_link=@college_img_link where colleg_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.Parameters.AddWithValue("@colleg_name", TextBox2.Text.Trim());
                    //cmd.Parameters.AddWithValue("@genre", genres);
                    cmd.Parameters.AddWithValue("@counselor_name", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@course_name", DropDownList2.SelectedItem.Value);
                    //cmd.Parameters.AddWithValue("@publish_date", TextBox3.Text.Trim());
                    //cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                    //cmd.Parameters.AddWithValue("@edition", TextBox9.Text.Trim());
                    //cmd.Parameters.AddWithValue("@book_cost", TextBox10.Text.Trim());
                    //cmd.Parameters.AddWithValue("@no_of_pages", TextBox11.Text.Trim());
                    cmd.Parameters.AddWithValue("@college_description", TextBox6.Text.Trim());
                    //cmd.Parameters.AddWithValue("@actual_stock", actual_stock.ToString());
                    //cmd.Parameters.AddWithValue("@current_stock", current_stock.ToString());
                    //cmd.Parameters.AddWithValue("@college_img_link", filepath);


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
                    //TextBox3.Text = dt.Rows[0]["publish_date"].ToString();
                    //TextBox9.Text = dt.Rows[0]["edition"].ToString();
                    //TextBox10.Text = dt.Rows[0]["book_cost"].ToString().Trim();
                    //TextBox11.Text = dt.Rows[0]["no_of_pages"].ToString().Trim();
                    //TextBox4.Text = dt.Rows[0]["actual_stock"].ToString().Trim();
                    //TextBox5.Text = dt.Rows[0]["current_stock"].ToString().Trim();
                    TextBox6.Text = dt.Rows[0]["college_description"].ToString();
                    //TextBox7.Text = "" + (Convert.ToInt32(dt.Rows[0]["actual_stock"].ToString()) - Convert.ToInt32(dt.Rows[0]["current_stock"].ToString()));

                    //DropDownList1.SelectedValue = dt.Rows[0]["language"].ToString().Trim();
                    DropDownList2.SelectedValue = dt.Rows[0]["course_name"].ToString().Trim();
                    DropDownList3.SelectedValue = dt.Rows[0]["counselor_name"].ToString().Trim();

                    ListBox1.ClearSelection();
                    string[] genre = dt.Rows[0]["genre"].ToString().Trim().Split(',');
                    for (int i = 0; i < genre.Length; i++)
                    {
                        for (int j = 0; j < ListBox1.Items.Count; j++)
                        {
                            if (ListBox1.Items[j].ToString() == genre[i])
                            {
                                ListBox1.Items[j].Selected = true;

                            }
                        }
                    }

                    //global_actual_stock = Convert.ToInt32(dt.Rows[0]["actual_stock"].ToString().Trim());
                    //global_current_stock = Convert.ToInt32(dt.Rows[0]["current_stock"].ToString().Trim());
                    //global_issued_books = global_actual_stock - global_current_stock;
                    global_filepath = dt.Rows[0]["college_img_link"].ToString();

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

        void fillCounselorCourseValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT counselor_name from counselor_master_tbl;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList3.DataSource = dt;
                DropDownList3.DataValueField = "counselor_name";
                DropDownList3.DataBind();

                cmd = new SqlCommand("SELECT course_name from course_master_table;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataValueField = "course_name";
                DropDownList2.DataBind();

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
                string genres = "";
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    genres = genres + ListBox1.Items[i] + ",";
                }
                // genres = Adventure,Self Help,
                genres = genres.Remove(genres.Length - 1);

                string filepath = "~/college_inventory/books1.png";
               // string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                //FileUpload1.SaveAs(Server.MapPath("college_inventory/" + filename));
                //filepath = "~/college_inventory/" + filename;


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO college_master_tbl(college_id,college_name,counselor_name,course_name,college_description,college_img_link) values(@college_id,@college_name,@counselor_name,@course_name,@college_description,@college_img_link)", con);

                cmd.Parameters.AddWithValue("@college_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@college_name", TextBox2.Text.Trim());
                //cmd.Parameters.AddWithValue("@genre", genres);
                cmd.Parameters.AddWithValue("@counselor_name", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@course_name", DropDownList2.SelectedItem.Value);
                //cmd.Parameters.AddWithValue("@publish_date", TextBox3.Text.Trim());
                //cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                //cmd.Parameters.AddWithValue("@edition", TextBox9.Text.Trim());
                //cmd.Parameters.AddWithValue("@book_cost", TextBox10.Text.Trim());
                //cmd.Parameters.AddWithValue("@no_of_pages", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@college_description", TextBox6.Text.Trim());
                //cmd.Parameters.AddWithValue("@actual_stock", TextBox4.Text.Trim());
                //cmd.Parameters.AddWithValue("@current_stock", TextBox4.Text.Trim());
                //cmd.Parameters.AddWithValue("@book_img_link", filepath);

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