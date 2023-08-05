using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class usignup : System.Web.UI.Page
{
    String database = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void signup_Click(object sender, EventArgs e)
    {
        if (checkmember())
        {
            Response.Write("<script> alert('member exist');</script>");
            
        }
        else
        {
            newmemberadd();
            
            Response.Redirect("ulogin.aspx");
        }
    }
    void newmemberadd()
    {
        try
        {
            SqlConnection con = new SqlConnection(database);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into member_master(full_name,contact_no,email,dob,state,city,pincode,full_address,member_id,password,account_status) values('" + txtname.Text.Trim() + "','" + txtcontact.Text.Trim() + "','" + txtemail.Text.Trim() + "','" + top.conv_date(txtdob.Text.Trim()) + "','" + cmbstate.Text.Trim() + "','" + txtcity.Text.Trim() + "','" + txtpin.Text.Trim() + "','" + txtads.Text.Trim() + "','" + txtuid.Text.Trim() + "','" + txtpass.Text.Trim() + "','pending')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        catch(Exception ex)
        {
            Response.Write("<script> alert('"+ex.Message+"');</script>");
        }
    }

    bool checkmember()
    {
        
            SqlConnection con = new SqlConnection(database);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from member_master where member_id='" + txtuid.Text.Trim() + "'";
            cmd.Connection = con;
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

            con.Close();
            cmd.Dispose();
           
      
        

    }



    protected void txtemail_TextChanged(object sender, EventArgs e)
    {
        txtuid.Text = txtemail.Text;
    }
}