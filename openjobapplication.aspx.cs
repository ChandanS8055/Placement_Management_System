using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Placement_Management_System
{
    public partial class openjobapplication : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfuserExists())
            {
                Response.Write("<script>alert('Application already Exists!!');</script>");
            }
            else
            {
                addjob();
            }
            GridView1.DataBind();
        }

      

        void deleteBookByID()
        {
            if (checkIfuserExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from job_tbl WHERE rec_id='" + rid.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Job Deleted Successfully');</script>");


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid r ID');</script>");
            }
        }

        void addjob()
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


                string filepath = "~/userData/index.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("userData/" + filename));
                filepath = "~/userData/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO job_tbl(rec_id, comp_name, rec_type, roles, published_date, last_date, description, broucher) values(@rec_id, @comp_name, @rec_type, @roles, @published_date, @last_date, @description, @broucher)", con);
                cmd.Parameters.AddWithValue("@rec_id", rid.Text.Trim());
                cmd.Parameters.AddWithValue("@comp_name", cname.Text.Trim());
                cmd.Parameters.AddWithValue("@rec_type", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@roles", genres);
                cmd.Parameters.AddWithValue("@published_date", pdate.Text.Trim());
                cmd.Parameters.AddWithValue("@last_date", ldate.Text.Trim());
                cmd.Parameters.AddWithValue("@description", descrip.Text.Trim());
                cmd.Parameters.AddWithValue("@broucher", filepath);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Job added Successfully!!');</script>");
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

                SqlCommand cmd = new SqlCommand("SELECT * from job_tbl where rec_id='" + rid.Text.Trim() + "' ;", con);
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            getBookByID();
        }







        void getBookByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from job_tbl WHERE rec_id='" + rid.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    rid.Text = dt.Rows[0]["rec_id"].ToString();
                    cname.Text = dt.Rows[0]["comp_name"].ToString();
                    DropDownList1.SelectedValue = dt.Rows[0]["rec_type"].ToString().Trim();

                    pdate.Text = dt.Rows[0]["published_date"].ToString().Trim();
                    ldate.Text = dt.Rows[0]["last_date"].ToString().Trim();
                    descrip.Text = dt.Rows[0]["description"].ToString().Trim();
                    ListBox1.ClearSelection();

                    string[] genre = dt.Rows[0]["roles"].ToString().Trim().Split(',');
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
                }
                else
                {
                    Response.Write("<script>alert('Invalid Job ID');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteBookByID();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}