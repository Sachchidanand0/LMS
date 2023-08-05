using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adbookissuing : System.Web.UI.Page
{
    String database = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            drecord();
        }
    }
  

    protected void issue_Click(object sender, EventArgs e)
    {
        if(BookCheckById() && membercheck())
        {
            if (checkissuebook())
            {
                
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'This Member Already Taked This Book!', 'error');", true);
            }
            else
            {
                issuebook();
            }
            
            
        }
        else
        {
            
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'Worn Member ID And Book ID!', 'error');", true);
        }

       
    }

    protected void return_Click(object sender, EventArgs e)
    {
        if (BookCheckById() && membercheck())
        {
            if (checkissuebook())
            {
                returnbook();
            }
            else
            {
                Response.Write("<script> alert('This Entry does not exsit');</script>");
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'This Entry Dose Not Exist!', 'error');", true);
            }


        }
        else
        {
            
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'Worng Book Id And Member Id!', 'error');", true);
        }
    }


    //User Defined Function


    void returnbook()
    {
        try
        {

            SqlConnection con = new SqlConnection(database);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Delete from book_issue where member_id='" + txtmi.Text.Trim() + "' and book_id='" + txtbi.Text.Trim() + "'";
            cmd.Connection = con;
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                cmd = new SqlCommand();
                cmd.CommandText = "update book_master set current_stock=current_stock + 1 where book_id='" + txtbi.Text.Trim() + "'";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();
                cmd.Dispose();
                drecord();
                
                ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Good job!', 'Book Return Successfully !', 'success');", true);
            }
            else
            {
                
                ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'Book Return failed!', 'error');", true);
            }
        }
        catch(Exception ex)
        {
            Response.Write("<script> alert('"+ex.Message+"');</script>");
        }
    }
    void issuebook()
    {
        try
        {
            SqlConnection con = new SqlConnection(database);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Insert into book_issue(member_id,member_name,book_id,book_name,issue_date,end_date) values('" + txtmi.Text.Trim() + "','" + txtmn.Text.Trim() + "','" + txtbi.Text.Trim() + "','" + txtbn.Text.Trim() + "','" + top.conv_date(txtsd.Text.Trim()) + "','" + top.conv_date(txted.Text.Trim()) + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            cmd = new SqlCommand();
            cmd.CommandText = "update book_master set current_stock= current_stock-1 where book_id='" + txtbi.Text.Trim() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            drecord();
            
            ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Good job!', 'Book Issue Successfully !', 'success');", true);
        }
        catch(Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }


    bool BookCheckById()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from book_master where book_id='" + txtbi.Text.Trim() + "'And current_stock>0";
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

    bool membercheck()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from member_master where member_id='" + txtmi.Text.Trim() + "'";
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


    void getnames()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select Book_name from book_master where book_id='" + txtbi.Text.Trim() + "'";
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count >= 1)
        {
            txtbn.Text = dt.Rows[0]["book_name"].ToString();
        }
        else
        {
            Response.Write("<script> alert('Worng Book Id');</script>");
        }

        cmd = new SqlCommand();
        cmd.CommandText = "select full_name from member_master where member_id='" + txtmi.Text.Trim() + "'";
        cmd.Connection = con;
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count >= 1)
        {
            txtmn.Text = dt.Rows[0]["full_name"].ToString();
        }
        else
        {
            Response.Write("<script> alert('Worng Member Id');</script>");
        }

        con.Close();
        cmd.Dispose();
        da.Dispose();


    }







    bool checkissuebook()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from book_issue where member_id='" + txtmi.Text.Trim() + "'and book_id='"+txtbi.Text.Trim()+"'";
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
        cmd.CommandText = "Select member_id as[M-ID],member_name as[Member Name],book_id as[B-ID],book_name as[Book Name],convert(varchar,issue_date,103)as[Issue Date],convert(varchar,end_date,103)as [End Date] from book_issue";
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        datagrid.DataSource = dt;
        datagrid.DataBind();
        con.Close();
        cmd.Dispose();

    }

   
    protected void go_Click(object sender, EventArgs e)
    {
        getnames();
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
        }catch(Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }
}