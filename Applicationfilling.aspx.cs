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
    public partial class Applicationfilling : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfcustExists())
            {
                Response.Write("<script>alert('You already Applied for this Job');</script>");
            }
            else
            {


                adduser();
            }
        }





        //To add service user to Database
        void adduser()
        {
            try
            {
                string filepath = "~/Resumedata/index.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("Resumedata/" + filename));
                filepath = "~/Resumedata/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO application_master_tbl(reg_no, sname, rid, company, p_type, sem, dept, contact, mail, c10, c12, sem1, sem2, sem3, sem4, sem5, sem6, total, resume, status) values(@reg_no, @sname, @rid, @company, @p_type, @sem, @dept, @contact, @mail, @c10, @c12, @sem1, @sem2, @sem3, @sem4, @sem5, @sem6, @total, @resume, @status)", con);
                cmd.Parameters.AddWithValue("@reg_no", regno.Text.Trim());
                cmd.Parameters.AddWithValue("@sname", sname.Text.Trim());
                cmd.Parameters.AddWithValue("@rid", rid.Text.Trim());
                cmd.Parameters.AddWithValue("@company", company.Text.Trim());
                cmd.Parameters.AddWithValue("@p_type", type.Text.Trim());
                cmd.Parameters.AddWithValue("@sem", semlist.Text.Trim());
                cmd.Parameters.AddWithValue("@dept", deplist.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@contact", contact.Text.Trim());
                cmd.Parameters.AddWithValue("@mail", mail.Text.Trim());
                cmd.Parameters.AddWithValue("@c10", sslc.Text.Trim());
                cmd.Parameters.AddWithValue("@c12", pu.Text.Trim());
                cmd.Parameters.AddWithValue("@sem1", s1.Text.Trim());
                cmd.Parameters.AddWithValue("@sem2", s2.Text.Trim());
                cmd.Parameters.AddWithValue("@sem3", s3.Text.Trim());
                cmd.Parameters.AddWithValue("@sem4", s4.Text.Trim());
                cmd.Parameters.AddWithValue("@sem5", s5.Text.Trim());
                cmd.Parameters.AddWithValue("@sem6", s6.Text.Trim());
                cmd.Parameters.AddWithValue("@total", tot.Text.Trim());
                cmd.Parameters.AddWithValue("@resume", filepath);
                cmd.Parameters.AddWithValue("@status", "Pending");

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Submitted Successfully!!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        //To check Customer Exists in Database
        bool checkIfcustExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Application_master where reg_no='" + regno.Text.Trim() + "' AND rid='" + rid.Text.Trim() + "';", con);
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
    }
}