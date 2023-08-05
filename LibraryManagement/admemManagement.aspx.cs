using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admemManagement : System.Web.UI.Page
{
    String database = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        drecord();
    }

    protected void go_Click(object sender, EventArgs e)
    {
        if (idcheck())
        {
            fillmemebers();
        }
        else
        {
            
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'Invaild Member ID!', 'error');", true);
        }
    }

    protected void active_Click(object sender, EventArgs e)
    {
        updatestatus("active");
    }

    protected void pending_Click(object sender, EventArgs e)
    {
        updatestatus("pending");
    }

    protected void deactivate_Click(object sender, EventArgs e)
    {
        updatestatus("deactivate");
    }
    void fillmemebers()
    {
        try
        {
            SqlConnection con = new SqlConnection(database);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from member_master where member_id='" + txtmi.Text.Trim() + "'";
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                txtfn.Text = dr["full_name"].ToString();
                txtas.Text = dr["account_status"].ToString();
                txtdob.Text = Convert.ToDateTime(dr["dob"].ToString()).Day.ToString().PadLeft(2, '0') + "/" + Convert.ToDateTime(dr["dob"].ToString()).Month.ToString().PadLeft(2, '0') + "/" + Convert.ToDateTime(dr["dob"].ToString()).Year;
                txtcn.Text = dr["contact_no"].ToString();
                txtemail.Text = dr["email"].ToString();
                txtstate.Text = dr["state"].ToString();
                txtcity.Text = dr["city"].ToString();
                txtpin.Text = dr["pincode"].ToString();
                txtads.Text = dr["full_address"].ToString();
            }
            con.Close();
            cmd.Dispose();
            da.Dispose();
        }catch(Exception ex)
        {
            Response.Write("<script> alert('" + ex.Message + "')</script>");
        }

    }
    bool idcheck()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from member_master where member_id='" +txtmi.Text.Trim() + "'";
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
            cmd.CommandText = "select member_id,full_name,account_status,contact_no,email,state,city from member_master";
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            datagrid.DataSource = dt;
            datagrid.DataBind();



            con.Close();
            cmd.Dispose();

        
    }
    void updatestatus( String sts)
    {
        try
        {
            SqlConnection con = new SqlConnection(database);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update member_master set account_status='"+sts+"' where member_id='" + txtmi.Text.Trim() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            
            ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Good job!', 'Member Status Updated Successfully !', 'success');", true);
            drecord();
            con.Close();
            cmd.Dispose();
           
        }
        catch (Exception ex)
        {
            Response.Write("<script> alert('" + ex.Message + "')</script>");
        }
    }
    protected void deluser_Click(object sender, EventArgs e)
    {
        deletemember();
    }

    void deletemember()
    {
        if (idcheck())
        {
            try
            {
                SqlConnection con = new SqlConnection(database);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "delete from member_master  where member_id='" + txtmi.Text.Trim() + "'";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Member deleted Successful')</script>");
                drecord();
                clr();
                con.Close();
                cmd.Dispose();

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "')</script>");
            }
        }
        else
        {
            Response.Write("<script> alert('Member Id not found')</script>");
        }
    }

    void clr()
    {
        txtmi.Text = "";
        txtfn.Text ="";
        txtas.Text = "";
        txtdob.Text ="";
        txtcn.Text = "";
        txtemail.Text = "";
        txtstate.Text = "";
        txtcity.Text = "";
        txtpin.Text = "";
        txtads.Text = "";
    }
}