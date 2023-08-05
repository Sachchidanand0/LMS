using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Result_login : System.Web.UI.Page
   
{
    String database = ConfigurationManager.ConnectionStrings["scon"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select s_id from student_data where s_id='"+fill.Text.Trim()+"'";
        cmd.Connection = con;
        SqlDataAdapter sdr = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sdr.Fill(dt);
        foreach(DataRow dr in dt.Rows)
        {
            String id = "";
            id = dr["s_id"].ToString();

            if (id == fill.Text.Trim())
            {
                Response.Redirect("StudentResult/studentresultdata.aspx");
            }
        }
        sdr.Dispose();
        cmd.Dispose();
        con.Close();

    }
}