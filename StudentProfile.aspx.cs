using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class StudentProfile : System.Web.UI.Page
{
    String database = ConfigurationManager.ConnectionStrings["scon"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {if(Session["userid"]!=null && Session["userid"].ToString()!="")
            {
                getdata();
            }
            else
            {
                Session["userid"] = "";
            }
            
        }
    }

    protected void update_Click(object sender, EventArgs e)
    {

    }

    void getdata()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select Student_Name,convert(varchar,DOB,103)as[DOB],Stu_phn,Gender,Student_cast,Course,stu_address from student_data where Email_id='"+Session["userid"].ToString()+"'";
        cmd.Connection = con;
        SqlDataAdapter sdr = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sdr.Fill(dt);
        foreach(DataRow dr in dt.Rows)
        {
            txtname.Text = dr["Student_name"].ToString();
            txtdob.Text = dr["DOB"].ToString();
            txtcontact.Text = dr["Stu_phn"].ToString();
            gender.Text = dr["Gender"].ToString();
            cast.Text = dr["Student_cast"].ToString();
            course.Text = dr["Course"].ToString();
            txtads.Text = dr["stu_address"].ToString();
            txtemail.Text = Session["userid"].ToString();
        }
        sdr.Dispose();
        cmd.Dispose();
        con.Close();
    }
}