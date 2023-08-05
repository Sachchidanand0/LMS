using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class studentReg : System.Web.UI.Page
{
    String database = ConfigurationManager.ConnectionStrings["scon"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void register_Click(object sender, EventArgs e)
    {
        SqlConnection scon = new SqlConnection(database);
        scon.Open()
;        SqlCommand scmd = new SqlCommand();
        scmd.CommandText = "insert into student_data(S_id , Student_Name , Father_Name , Mother_Name ,DOB,Gender , Stu_phn , Student_Cast , Stu_Address , Course ) values('" + txtsid.Text.Trim() + "' , '"+txtfname.Text.Trim() + "' , '"+txtfnm.Text.Trim()+"' ,'"+txtmname.Text.Trim()+"', '"+date.convertDate(dob.Text)+"' ,'"+cmbgender.SelectedValue+"' , '"+txtphn.Text.Trim()+"' , '"+cmbcast.SelectedValue+"' , '"+txtaddress.Text.Trim()+"' , 'BCA')";
        scmd.Connection = scon;
        int i = scmd.ExecuteNonQuery();
        scmd.Dispose();
        if(i > 0)
        {
             scmd = new SqlCommand();
            scmd.CommandText = "insert into uLogin values('" + txtemail.Text.Trim() + "' , '"+txtpass.Text.Trim()+"')";
            scmd.Connection = scon;
           int idata =  scmd.ExecuteNonQuery();
            scmd.Dispose();
            scon.Close();

            if(idata > 0)
            {
                Response.Redirect("sLogin.aspx");
            }

            
        }

      
    }
}