using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Placement_Management_System
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            LinkButton10.Visible = false; 
            LinkButton11.Visible = false; 
            LinkButton12.Visible = true; 
            LinkButton13.Visible = true; 
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            LinkButton4.Visible = false;
            LinkButton5.Visible = false;
            LinkButton6.Visible = false;
            LinkButton7.Visible = false;
            LinkButton3.Visible = false;
            LinkButton8.Visible = false;
            try
            {
                if (Session["role"].Equals("user"))
                {
                   
                    LinkButton10.Visible = true; 
                    LinkButton11.Visible = true; 
                    LinkButton12.Visible = false;
                    LinkButton13.Visible = false; 
                    LinkButton1.Visible = false;
                    LinkButton2.Visible = false;
                    LinkButton4.Visible = false;
                    LinkButton5.Visible = false;
                    LinkButton8.Visible = true;

                    LinkButton6.Visible = false;
                    LinkButton7.Visible = false;
                    LinkButton3.Visible = true;

                    LinkButton10.Text = "Hello " + Session["username"].ToString();

                }
             
                else if (Session["role"].Equals("admin"))
                {
                  
                    LinkButton10.Visible = false;
                    LinkButton11.Visible = true;
                    LinkButton12.Visible = false; 
                    LinkButton13.Visible = false; 
                    LinkButton1.Visible = false;
                    LinkButton2.Visible = false;
                    LinkButton4.Visible = true;
                    LinkButton5.Visible = true;
                    LinkButton6.Visible = true;
                    LinkButton7.Visible = true;
                    LinkButton3.Visible = false;
                    LinkButton8.Visible = false;

                }
                else if (Session["role"].Equals("company"))
                {
                    LinkButton10.Text = "Hello " + Session["username"].ToString();
                    LinkButton10.Visible = true; 
                    LinkButton11.Visible = true; 
                    LinkButton12.Visible = false;
                    LinkButton13.Visible = false;
                    LinkButton1.Visible = false;
                    LinkButton2.Visible = false;
                    LinkButton4.Visible = false;
                    LinkButton5.Visible = false;
                    LinkButton6.Visible = false;
                    LinkButton7.Visible = true;
                    LinkButton3.Visible = true;
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Session["username"] = " ";
            Session["fullname"] = " ";
            Session["role"] = " ";
            LinkButton10.Visible = false; // hello user link button
            LinkButton11.Visible = false; // admin login link button
            LinkButton12.Visible = true; // admin login link button
            LinkButton13.Visible = true; // admin login link button
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            LinkButton3.Visible = false;
            LinkButton4.Visible = false;
            LinkButton5.Visible = false;
            LinkButton6.Visible = false;
            LinkButton7.Visible = false;

            Response.Redirect("Homepage.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("companylogin.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Managenotifications.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("openjobapplication.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("manageapplication.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Selectedlist.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("companyviewapplications.aspx");
        }
        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Applicationfilling.aspx");
        }

    }
}