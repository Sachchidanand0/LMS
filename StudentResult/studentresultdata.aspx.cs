using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class studentresultdata : System.Web.UI.Page
{
    String database = ConfigurationManager.ConnectionStrings["scon"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getAllData();
            if(Session["Enrollment"]==null && Session["Enrollment"].ToString() == "")
            {
                Session["Enrollment"] = "hey";
            }
        }
    }

    void getAllData()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select student_data.S_id , student_data.Student_Name , student_data.Father_Name , student_data.Gender , Stu_result.Computer_basic , Stu_result.c_language , Stu_result.English , Stu_result.Mathematics from student_data INNER JOIN Stu_result on '"+Session["Enrollment"].ToString()+"' = '"+Session["Enrollment"].ToString()+"'";
        cmd.Connection = con;
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.HasRows) 
        {
            sdr.Read();
            sid.InnerText = sdr["S_id"].ToString();
            Stname.InnerText = sdr["Student_Name"].ToString();
            Fname.InnerText = sdr["Father_Name"].ToString();
            gender.InnerText = sdr["Gender"].ToString();
            Cbmarks.InnerText = sdr["Computer_basic"].ToString();
            ClMarks.InnerText = sdr["c_language"].ToString();
            FeMarks.InnerText = sdr["English"].ToString();
            mMarks.InnerText = sdr["Mathematics"].ToString();

            totalObtainMarks.InnerText = (Convert.ToDouble(Cbmarks.InnerText) + Convert.ToDouble(ClMarks.InnerText) + Convert.ToDouble(FeMarks.InnerText) + Convert.ToDouble(mMarks.InnerText)).ToString();
            percentage.InnerText = ((Convert.ToDouble(totalObtainMarks.InnerText) / 500) * 100).ToString();
          
             if(Convert.ToDouble(percentage.InnerText) > 40)
            {
                decision.InnerText = "Pass !!";
            }
            else
            {
                decision.InnerText = "Fail !!";
            }
        }

        sdr.Close();
        cmd.Dispose();
        con.Close();
    }

    protected void prnt_Click(object sender, EventArgs e)
    {
        Response.Redirect("prntdata.aspx");
    }
}