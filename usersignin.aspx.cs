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
    public partial class usersignin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfuserExists())
            {
                Response.Write("<script>alert('User Already Exists!! Please LogIn');</script>");
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
                string filepath = "~/userData/index.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("userData/" + filename));
                filepath = "~/userData/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO user_tbl( reg_no, sname, sem, dept, contact, mail, password, p_img) values(@reg_no, @sname, @sem, @dept, @contact, @mail, @password, @p_img)", con);
                cmd.Parameters.AddWithValue("@reg_no", regno.Text.Trim());
                cmd.Parameters.AddWithValue("@sname", sname.Text.Trim());
                cmd.Parameters.AddWithValue("@sem", semlist.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@dept", deplist.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@contact", cont.Text.Trim());
                cmd.Parameters.AddWithValue("@mail", mail.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password.Text.Trim());
                cmd.Parameters.AddWithValue("@p_img", filepath);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('SignUp Successfull!! Go to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //To check Our User Exists in Database
        bool checkIfuserExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from user_tbl where reg_no='" + regno.Text.Trim() + "';", con);
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