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
    public partial class Companysignup : System.Web.UI.Page
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
                Response.Write("<script>alert('Company Already Exists!! Please LogIn');</script>");
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
                string filepath = "~/companyData/index.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("companyData/" + filename));
                filepath = "~/companyData/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO company_tbl(comp_id, c_name, c_type, contact, mail,address, password, logo) values(@comp_id, @c_name, @c_type, @contact, @mail, @address, @password, @logo)", con);
                cmd.Parameters.AddWithValue("@comp_id", cid.Text.Trim());
                cmd.Parameters.AddWithValue("@c_name", cname.Text.Trim());
                cmd.Parameters.AddWithValue("@c_type", ctype.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@contact", cont.Text.Trim());
                cmd.Parameters.AddWithValue("@mail", mail.Text.Trim());
                cmd.Parameters.AddWithValue("@address", address.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password.Text.Trim());
                cmd.Parameters.AddWithValue("logo", filepath);


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

                SqlCommand cmd = new SqlCommand("SELECT * from company_tbl where comp_id='" + cname.Text.Trim() + "';", con);
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