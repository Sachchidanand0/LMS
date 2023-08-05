using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class publisher : System.Web.UI.Page
{
    String database = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            drecord();
        }
    }

    protected void Gobtn_Click(object sender, EventArgs e)
    {
        if (checkpublisherid())
        {
            getpublisher();
            drecord();
        }
        else
        {
               ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'Publisher Does Not Exist!', 'error');", true);
        }

    }

    protected void save_Click(object sender, EventArgs e)
    {
        if (checkpublisherid())
        {
            ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'Publisher Id Already Exist!', 'error');", true);
            drecord();
        }
        else
        {
            savepublisher();
        }
    }

    protected void updte_Click(object sender, EventArgs e)
    {
        if (checkpublisherid())
        {
            update();
            drecord();

        }
        else
        {
            
            ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'Publisher Id Dose Not Exist!', 'error');", true);


        }
    }

    protected void del_Click(object sender, EventArgs e)
    {
        if(checkpublisherid())
        {
            delPublisher();
            drecord();
        }
        else
        {
            
            ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'Publisher Id Dose Not Exist!', 'error');", true);
        }
    }


    //User defined function()

    void delPublisher()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete publisher_master where publisher_id='" + txtpi.Text.Trim() + "'";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
        drecord();
        ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Good job!', 'Publisher Deleted Successfully !', 'success');", true);
    }
    void update()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Update publisher_master set publisher_name='" + txtpn.Text.Trim() + "' where publisher_id='" + txtpi.Text.Trim() + "'";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
        drecord();
        ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Good job!', 'Publisher Name Updated Successfully !', 'success');", true);
    }
    void savepublisher()
    {
        try
        {
            SqlConnection con = new SqlConnection(database);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into publisher_master (publisher_id,publisher_name) values('"+txtpi.Text.Trim()+"','"+txtpn.Text.Trim()+"')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            drecord();
            ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Good job!', 'Publisher Saved Successfully !', 'success');", true);
        }
        catch(Exception)
        {

        }
    }
    void getpublisher()
    {
        try { 
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from publisher_master where publisher_id='" + txtpi.Text.Trim() + "'";
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            txtpn.Text = dr["publisher_name"].ToString();

        }
            con.Close();
            cmd.Dispose();
            da.Dispose();
        }catch(Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }

    }
    bool checkpublisherid()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from publisher_master where publisher_id='" +txtpi.Text.Trim() + "'";
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
    void drecord()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select publisher_id, publisher_name from publisher_master";
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        datagrid.DataSource = dt;
        datagrid.DataBind();
        con.Close();
        cmd.Dispose();

    }



   
}