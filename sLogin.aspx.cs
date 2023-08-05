using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class sLogin : System.Web.UI.Page
{
    String database = ConfigurationManager.ConnectionStrings["scon"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select UserName , pass from uLogin where UserName = '"+txtuname.Text+"'";
        cmd.Connection = con;
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.HasRows)
        {
            sdr.Read();
            String uid = sdr["UserName"].ToString();
            String pass = sdr["pass"].ToString();
            if(uid == txtuname.Text.Trim() && pass == txtpass.Text.Trim())
            {
                Session["userid"] = sdr["UserName"].ToString();
                Session["passcode"] = sdr["pass"].ToString();
               
                Response.Redirect("Default.aspx");
                
                
            }

            else
            {
                Response.Write("<script>alert('Data Not Found')</script>");
            }
          
           
        }

        sdr.Close();
        cmd.Dispose();
        con.Close();

    }
}