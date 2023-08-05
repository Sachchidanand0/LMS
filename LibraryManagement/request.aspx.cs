using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class LibraryManagement_request : System.Web.UI.Page
{
    String database = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        derecord();
    }

    void derecord()
    {
        SqlConnection con = new SqlConnection(database);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select u_id, u_name,b_id,b_name,convert(varchar,issue_date,103) as[date] from request";
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        datagrid.DataSource=dt;
        datagrid.DataBind();
        con.Close();
        cmd.Dispose();
        da.Dispose();

    }
}