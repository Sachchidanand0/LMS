using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class author : System.Web.UI.Page
{
    String database = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            drecord();
            
        }
    }

    protected void save_Click(object sender, EventArgs e)
    {
        try
        {
            if (authorcheck())
            {
               
                drecord();
            }
            else
            {
                addauthor();
            }
        }
        catch(Exception ex)
        {
            Response.Write("<script> alert('"+ex.Message+"');</script>");
        }
    }

    protected void updte_Click(object sender, EventArgs e)
    {
        try
        {
            if (authorcheck())  
            {
                updateauthor();
                drecord();
            }
            else
            {
                Response.Write("<script> alert('author not  exists');</script>");
                
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script> alert('" + ex.Message + "');</script>");
        }
    }

    protected void del_Click(object sender, EventArgs e)
    {
        try
        {
            if (authorcheck())
            {
                deleteauthor();
                drecord();
            }
            else
            {
                Response.Write("<script> alert('author dose not  exists');</script>");

            }
        }
        catch (Exception ex)
        {
            Response.Write("<script> alert('" + ex.Message + "');</script>");
        }
    }
    bool authorcheck()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from author_master where author_id='" + txtai.Text.Trim() + "'";
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
     void addauthor()
    {
        try
        {
            SqlConnection con = new SqlConnection(database);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Insert into author_master(author_id,author_name) values('" + txtai.Text.Trim() + "','" + txtan.Text.Trim() + "')";
            cmd.Connection = con;
            int i = cmd.ExecuteNonQuery();
            if (i >= 1)
            {
                ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Good job!', 'Author Added Successfully !', 'success');", true);
                clear();
                drecord();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'Data not save!', 'error');", true);
            }
            con.Close();
            cmd.Dispose();
        }catch(Exception ex)
        {
            Response.Write("<script> alert('" + ex.Message + "');</script>");
       
        }
    }
    void updateauthor()
    {
        try
        {
            SqlConnection con = new SqlConnection(database);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update author_master set author_name='" + txtan.Text.Trim() + "' where author_id='" + txtai.Text.Trim() + "'";
            cmd.Connection = con;
            int i = cmd.ExecuteNonQuery();
            if (i >= 1)
            {
                ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Good job!', 'Author Name Updated Successfully !', 'success');", true);
                clear();
                drecord();
              
            }
            else
            {
                
                ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'Data not save!', 'error');", true);
            }
            con.Close();
            cmd.Dispose();
        }
        catch (Exception ex)
        {
            Response.Write("<script> alert('" + ex.Message + "');</script>");

        }

    }
    void deleteauthor()
    {
        try
        {
            SqlConnection con = new SqlConnection(database);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from author_master  where author_id='" + txtai.Text.Trim() + "'";
            cmd.Connection = con;
            int i = cmd.ExecuteNonQuery();
            if (i >= 1)
            {
                
                ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Good job!', 'Author Deleted Successfully !', 'success');", true);
                clear();
                drecord();
                
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'Data not Deleted!', 'error');", true);
            }
            con.Close();
            cmd.Dispose();
        }
        catch (Exception ex)
        {
            Response.Write("<script> alert('" + ex.Message + "');</script>");

        }
    }

    void clear()
    {
        txtai.Text = "";
        txtan.Text = "";
        
    }

    void drecord()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select author_id as[Author ID],author_name as[Author Name] from author_master";
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        datagrid.DataSource = dt;
        datagrid.DataBind();
        datagrid.UseAccessibleHeader = true;
        datagrid.HeaderRow.TableSection = TableRowSection.TableHeader;


        con.Close();
        cmd.Dispose();

    }

    protected void datagrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        datagrid.PageIndex = e.NewPageIndex;
        datagrid.DataBind();
        drecord();
     

    }


  


}