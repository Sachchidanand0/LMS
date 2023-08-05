using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminlogin : System.Web.UI.Page
{
    String database = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs e)
    {
        try
        {
            String id = "", pass = "";
            SqlConnection con = new SqlConnection(database);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select username,password from admin_login where username='" + txtid.Text.Trim() + "'";
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                dr.Read();
                id = dr["username"].ToString();
                pass = dr["password"].ToString();
                if (id == txtid.Text.Trim() && pass == txtpass.Text.Trim())
                {
                    Session["username"] = dr["username"].ToString();
                   
                    Session["role"] = "Admin";
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("<script> alert('invalid user');</script>");
                }


            }
            else
            {
                Response.Write("<script> alert('invalid user');</script>");
            }

            con.Close();
            cmd.Dispose();
            dr.Dispose();



        }

        catch (Exception ex)
        {
            Response.Write("<script> alert('" + ex.Message + "');</script>");


        }
    }
}