using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class videolecture : System.Web.UI.Page
{
    public String vsrc = "";
  

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["type"] == null || Session["type"].ToString() == "")
            {
                Session["type"] = "none";
            }
            drecord();
            
        }
        if (Session["type"] == null || Session["type"].ToString() == "")
        {
            Session["type"]= "none";
        }
    }



    void drecord()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "server=.; initial catalog=videoLecture; user id=sa; password=1234;";
        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select id,name,video_link from videos where sts='"+Session["type"].ToString()+"'";
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



    protected void datagrid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "DEL")
            {
                int i = Convert.ToInt32(e.CommandArgument);

                Label id = datagrid.Rows[i].FindControl("txtcon") as Label;
                SqlConnection scon = new SqlConnection();
                scon.ConnectionString = "server=.; initial catalog=videoLecture; user id=sa; password=1234;";
                SqlCommand scmd = new SqlCommand();
                scmd.CommandText = "select video_link from videos where id = '"+id.Text.Trim()+ "' and sts='"+Session["type"].ToString()+"'";
                scmd.Connection = scon;
                SqlDataAdapter da = new SqlDataAdapter(scmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                foreach (DataRow dr in dt.Rows)
                {

                    vsrc = dr["video_link"].ToString();
                }
                scmd.Dispose();
                scon.Close();
                da.Dispose();
            }
        }catch(Exception )
        {
            Response.Write("<script>alert('do agen')</script>"); 
           
        }
    }



    
}