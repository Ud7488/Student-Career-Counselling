using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Career_Counselling
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; // user login link button
                    LinkButton2.Visible = true; // sign up link button

                    LinkButton3.Visible = false; // logout link button
                    LinkButton7.Visible = false; // hello user link button
                    LinkButton15.Visible = false; // test form of the user
                    LinkButton14.Visible = false; // event form for user


                    LinkButton6.Visible = true; // admin login link button
                    LinkButton11.Visible = false; // counselor management link button
                    LinkButton12.Visible = false; // course management link button
                    LinkButton8.Visible = false; // list of college link button
                    LinkButton9.Visible = false; // college suggestion link button
                    LinkButton10.Visible = false; // member management link button
                    LinkButton4.Visible = false; // contact us link button
                    LinkButton13.Visible = false; // admin test form of the user
                    LinkButton16.Visible = false; // admin test form of the user

                }

                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton15.Visible = true; // test form for the user
                    LinkButton14.Visible = true; // event form of the user
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["username"].ToString();

                    LinkButton6.Visible = true; // admin login link button
                    LinkButton11.Visible = false; // counselor management link button
                    LinkButton12.Visible = false; // course management link button
                    LinkButton8.Visible = false; // list of college link button
                    LinkButton9.Visible = false; // college suggestion link button
                    LinkButton10.Visible = false; // member management link button
                    LinkButton4.Visible = false; // contact us link button
                    LinkButton13.Visible= false; // admin test form 
                    LinkButton16.Visible = false; // admin event form of the user

                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button
                    LinkButton15.Visible = false; // test form for the user
                    LinkButton14.Visible = false; // event form of the user

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello Admin";


                    LinkButton6.Visible = false; // admin login link button
                    LinkButton11.Visible = true; // counselor management link button
                    LinkButton12.Visible = true; // course management link button
                    LinkButton8.Visible = true; // list of college link button
                    LinkButton9.Visible = true; // college suggestion link button
                    LinkButton10.Visible = true; // member management link button
                    LinkButton4.Visible = true; // contact us link button
                    LinkButton13.Visible = true; // admin test form
                    LinkButton16.Visible = true; // admin event form of the user
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("admincounselormanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("admincoursemanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("admincollegeinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("admincollegesuggestions.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        // user login 
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        // user sign up
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        //logout button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; // user login link button
            LinkButton2.Visible = true; // sign up link button
            LinkButton15.Visible = false; // test form for the user
            LinkButton14.Visible = false; // event form of the user


            LinkButton3.Visible = false; // logout link button
            LinkButton7.Visible = false; // hello user link button


            LinkButton6.Visible = true; // admin login link button
            LinkButton11.Visible = false; // counselor management link button
            LinkButton12.Visible = false; // course management link button
            LinkButton8.Visible = false; // list of college link button
            LinkButton9.Visible = false; // college suggestion link button
            LinkButton10.Visible = false; // member management link button
            LinkButton4.Visible = false; // contact us link button
            LinkButton15.Visible = false; // test form
            LinkButton16.Visible = false; // admin event form of the user

            Response.Redirect("homepage.aspx");
        }

        
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewcollege.aspx");
        }

        // view profile
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminContact.aspx");
        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("basicquestion.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminTest.aspx");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("Events.aspx");
        }

        protected void LinkButton16_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminEvents.aspx");
        }
    }
}