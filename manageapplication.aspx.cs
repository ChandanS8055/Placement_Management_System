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

namespace Placement_Management_System
{
    public partial class manageapplication : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Selected");
            GridView1.DataBind();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Pending");
            GridView1.DataBind();
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Rejected");
            GridView1.DataBind();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            if (checkIfMemberExists())
            {
                getMemberByID();
            }
            else
            {
                Response.Write("<script>alert('Invalid ID');</script>");
            }
        }





        void updateMemberStatusByID(string status)
        {
            if (checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("UPDATE application_master_tbl SET status='" + status + "' WHERE reg_no='" + regno.Text.Trim() + "' AND rid='" + rid.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Application Status Updated');</script>");


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
        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from application_master_tbl where reg_no='" + regno.Text.Trim() + "';", con);
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

        //user defined function to get student by regno
        void getMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from application_master_tbl where reg_no='" + regno.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        regno.Text = dr.GetValue(0).ToString();
                        sname.Text = dr.GetValue(1).ToString();
                        rid.Text = dr.GetValue(2).ToString();
                        comp.Text = dr.GetValue(3).ToString();
                        sem.Text = dr.GetValue(5).ToString();
                        dep.Text = dr.GetValue(6).ToString();
                        contact.Text = dr.GetValue(7).ToString();
                        mail.Text = dr.GetValue(8).ToString();
                        sslc.Text = dr.GetValue(9).ToString();
                        pu.Text = dr.GetValue(10).ToString();
                        s1.Text = dr.GetValue(11).ToString();
                        s2.Text = dr.GetValue(12).ToString();
                        s3.Text = dr.GetValue(13).ToString();
                        s4.Text = dr.GetValue(14).ToString();
                        s5.Text = dr.GetValue(15).ToString();
                        s6.Text = dr.GetValue(16).ToString();
                        tot.Text = dr.GetValue(17).ToString();

                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

      
    }
}