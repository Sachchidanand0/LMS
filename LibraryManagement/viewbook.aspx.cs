using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
public partial class viewbook : System.Web.UI.Page
{
    String database = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    int num = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            drecord();
        }
        if (Session["role"] == null || Session["role"].ToString() == "")
        {
            foreach (GridViewRow grow in datagrid.Rows)
            {
                var id = grow.FindControl("req") as Button;
                var check = grow.FindControl("check") as CheckBox;
                id.Visible = false;
                check.Visible = false;
                
            }

        }
        else if (Session["role"].ToString() == "user")
        {
            foreach (GridViewRow grow in datagrid.Rows)
            {
                var id = grow.FindControl("req") as Button;
                var check = grow.FindControl("check") as CheckBox;
                id.Visible = true;
                check.Visible = true;

            }
        }

    }

    void drecord()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select book_id,book_name,genre ,author_name ,publisher_name ,convert(varchar,publish_date,103) as[publish_date],language ,edition ,book_cost ,no_of_pages,book_description,actual_stock ,current_stock ,book_img_link from book_master";
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        datagrid.DataSource = dt;
        datagrid.DataBind();
        con.Close();
        cmd.Dispose();
        da.Dispose();

    }

    protected void req_Click(object sender, EventArgs e)
    {
        String database = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        foreach (GridViewRow grow in datagrid.Rows)
        { 
           
            var check = grow.FindControl("check") as CheckBox;
            if (check.Checked)
            {
                var id = grow.FindControl("bookID") as Label;
                var bname = grow.FindControl("bname") as Label;


                SqlConnection con = new SqlConnection(database);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "insert into request(u_id,u_name,b_id,b_name,issue_date) values('" + Session["username"].ToString() +"','" + Session["fullname"].ToString() + "','"+id.Text.Trim()+"','"+bname.Text.Trim()+"','"+top.conv_date(DateTime.Today.ToString())+"')";
                num++;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                
                con.Close();
                cmd.Dispose();
                ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Good job!', 'Request Send Successfully !', 'success');", true);
                

            }
            
     
        }
       
    }
}