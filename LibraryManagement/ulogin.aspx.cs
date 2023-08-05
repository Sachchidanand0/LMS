using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ulogin : System.Web.UI.Page
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
            cmd.CommandText = "select * from member_master where member_id='" + txtmlogin.Text.Trim() + "'";
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                id = dr["member_id"].ToString();
                pass = dr["password"].ToString();
                if (id == txtmlogin.Text.Trim() && pass == txtpass.Text.Trim())
                {
                    Session["username"] = dr["member_id"].ToString();
                    Session["fullname"] = dr["full_name"].ToString();
                    Session["role"] = "user";
                   
                    
                    Session["status"] = dr["account_status"];
                    Response.Redirect("homepage.aspx");
                } else
                {
                    Response.Write("<script> alert('invalid user');</script>");
                }


            } else
            {
                Response.Write("<script> alert('invalid user');</script>");
            }
            con.Close();
            cmd.Dispose();
            dr.Dispose();

           
            
        }

        catch(Exception ex)
        {
            Response.Write("<script> alert('"+ex.Message+"');</script>");
            


        }
    }
}