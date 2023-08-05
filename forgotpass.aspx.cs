using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class forgotpass : System.Web.UI.Page
{
    String database = ConfigurationManager.ConnectionStrings["scon"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void log_btn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update uLogin set pass = '" + txtnpass.Text.Trim() + "' where UserName = '" + txtuserid.Text.Trim() + "'";
        cmd.Connection = con;
        if(txtnpass.Text == txtcpass.Text)
        {
            int value = cmd.ExecuteNonQuery();
            if(value > 0)
            {
                Response.Write("<script> alert('Password updated successfully !!') </script>");
            }
            else
            {
                 Response.Write("<script> alert('Password not updated successfully !!') </script>");
               
            }


        }
        cmd.Dispose();
        con.Close();
    }
}