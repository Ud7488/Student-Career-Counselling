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
    public partial class basicquestion : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("insert into tbl_data (ans,ans1,ans2,ans3,ans4,member_id) values (@ans,@ans1,@ans2,@ans3,@ans4,@member_id)", con);
            cmd.Parameters.AddWithValue("ans", RadioButtonList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("ans1", RadioButtonList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("ans2", RadioButtonList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("ans3", RadioButtonList4.SelectedItem.Text);
            cmd.Parameters.AddWithValue("ans4", RadioButtonList5.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@member_id", TextBox1.Text.Trim());

            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();


            if (i != 0)
            {
                lbmsg.Text = "Your Answer Submitted Succesfully";
                lbmsg.ForeColor = System.Drawing.Color.ForestGreen;
            }
            else
            {
                lbmsg.Text = "Some Problem Occured";
                lbmsg.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
}