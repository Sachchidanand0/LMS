using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class userprofile : System.Web.UI.Page
{
    String database = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["username"] == null || Session["username"].ToString() == "")
            {
              
                
                
                    Response.Write("<script>alert('Session Over');</script>");
                    

                
               
                
                    Response.Redirect("ulogin.aspx");
                
              
                
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    drecord();
                    userdetails();
                }
            }
           
        }
        catch (Exception ex)
        {
           
            Response.Write("<script>alert('Update User successfully');</script>");
        }
    }
    protected void update_Click(object sender, EventArgs e)
    {
        if (idcheck())
        {
            updateuser();
        }
        else
        {
            

            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'User does not exist!', 'error');", true);
        }
    }



    // User Defined function
    void userdetails()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from member_master where member_id='" + Session["username"] + "'";
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        foreach(DataRow dr in dt.Rows)
        {
            txtname.Text = dr["full_name"].ToString();
            txtdob.Text= Convert.ToDateTime(dr["dob"].ToString()).Day.ToString().PadLeft(2, '0') + "/" + Convert.ToDateTime(dr["dob"].ToString()).Month.ToString().PadLeft(2, '0') + "/" + Convert.ToDateTime(dr["dob"].ToString()).Year;
            txtcontact.Text = dr["contact_no"].ToString();
            txtemail.Text = dr["email"].ToString();
            txtstate.Text=dr["state"].ToString();
            txtcity.Text = dr["city"].ToString();
            txtpin.Text = dr["pincode"].ToString(); 
            txtads.Text = dr["full_address"].ToString();
            txtuid.Text = dr["member_id"].ToString();
            txtopass.Text = dr["password"].ToString();

            accstatus.Text = dr["account_status"].ToString();

            if(dr["account_status"].ToString() == "active")
            {
                accstatus.Attributes.Add("class", "badge rounded-pill bg-success");

            }else if(dr["account_status"].ToString() == "pending")
            {
                accstatus.Attributes.Add("class", "badge rounded-pill bg-warning");
            }else if(dr["account_status"].ToString() == "deactive")
            {
                accstatus.Attributes.Add("class", "badge rounded-pill bg-danger");

            }
            else
            {
                accstatus.Attributes.Add("class", "badge rounded-pill bg-info");
            }

        }
        con.Close();
        cmd.Dispose();
        da.Dispose();

    }


    bool idcheck()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from member_master where member_id='" +Session["username"] + "'";
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
    void updateuser()
    {
        string password = "";
        if (txtnpass.Text.Trim() == "")
        {
            password = txtopass.Text.Trim();
        }
        else
        {
            password = txtnpass.Text.Trim();
        }
        try
        {
            SqlConnection con = new SqlConnection(database);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update member_master set full_name='" + txtname.Text.Trim() + "',dob='" + top.conv_date(txtdob.Text.Trim()) + "',contact_no='" + txtcontact.Text.Trim() + "',email='" + txtemail.Text.Trim() + "',state='" + txtstate.SelectedItem.Value.Trim() + "',city='" + txtcity.Text.Trim() + "',pincode='" + txtpin.Text.Trim() + "', full_address='" + txtads.Text.Trim() + "',password='" + password.Trim() + "',account_status='pending' where member_id='"+Session["username"]+"'";
            cmd.Connection = con;
           int i= cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            drecord();
            
            ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Good job!', ' User Updated Successfully !', 'success');", true);
            if (i >0)
            {
                userdetails();
            }
        }
        catch(Exception ex)
        {
            Response.Write("<script>alert('"+ex.Message+"');</script>");
        }
    }
    void drecord()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select member_id as[M-ID],member_name as[Member Name],book_id as[B-ID],book_name as[Book Name],convert(varchar,issue_date,103)as[Issue Date],convert(varchar,end_date,103)as [End Date] from book_issue where member_id='"+Session["username"]+"'";
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        datagrid.DataSource = dt;
        datagrid.DataBind();
        con.Close();
        cmd.Dispose();

    }
    protected void datagrid_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);

                DateTime today = DateTime.Today;
                if (today > dt)
                {
                    e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }

    
}