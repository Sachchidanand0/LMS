using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class Studentresult : System.Web.UI.Page
{
    String database = ConfigurationManager.ConnectionStrings["scon"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            getStuData();
            getstudentId();
        }
    }

    public void clr()
    {
        cmbsid.Text = "--Select your id--";
        txtsname.Text = "";
        txtcbasic.Text = "";
        txtc.Text = "";
        txtfe.Text = "";
        txtm.Text = "";
    }
    protected void save_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand scmd = new SqlCommand();
        scmd.CommandText = "insert into stu_result values('" +cmbsid.SelectedValue+ "' , '" + txtsname.Text.Trim() + "' , " + txtcbasic.Text.Trim() + " , " + txtc.Text.Trim() + " , " + txtfe.Text.Trim() + "," + txtm.Text.Trim() + " , 'BCA' , 'on' )";
        scmd.Connection = con;
        scmd.ExecuteNonQuery();
        scmd.Dispose();
        con.Close();

        getStuData();
        clr();
    }

    void getstudentId()
    {

        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand scmd = new SqlCommand();
        scmd.CommandText = "select S_id from student_data";
        scmd.Connection = con;
        SqlDataAdapter sda = new SqlDataAdapter(scmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            cmbsid.Items.Add(dr["S_id"].ToString());
        }
        sda.Dispose();
        scmd.Dispose();
        con.Close();

    }

    void getStuData()
    {

        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand scmd = new SqlCommand();
        scmd.CommandText = "select S_id , Student_Name, Computer_basic , c_language ,English , Mathematics from stu_result where Course='BCA' And stu_sts = 'on'";
        scmd.Connection = con;
        SqlDataAdapter sda = new SqlDataAdapter(scmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        datagrid.DataSource = dt;
        datagrid.DataBind();
        scmd.Dispose();
        sda.Dispose();
        con.Close();


    }

    protected void datagrid_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }

    protected void datagrid_RowEditing(object sender, GridViewEditEventArgs e)
    {
        datagrid.EditIndex = e.NewEditIndex;
        getStuData();
    }

    protected void datagrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtcbasic = datagrid.Rows[e.RowIndex].FindControl("txtcbasic") as TextBox;
        TextBox txtc = datagrid.Rows[e.RowIndex].FindControl("txtc") as TextBox;
        TextBox txtfe = datagrid.Rows[e.RowIndex].FindControl("txtfe") as TextBox;
        TextBox txtm = datagrid.Rows[e.RowIndex].FindControl("txtm") as TextBox;
        Label txtsid = datagrid.Rows[e.RowIndex].FindControl("sid") as Label;
        SqlConnection scon = new SqlConnection(database);
        scon.Open();
        SqlCommand scmd = new SqlCommand();
        scmd.CommandText = "update stu_result set Computer_basic = '" + txtcbasic.Text.Trim() + "' ,  C_language='" + txtc.Text.Trim() + "' , English='" + txtfe.Text.Trim() + "' , Mathematics='" + txtm.Text.Trim() + "' where S_id = '" +txtsid.Text+"'  ";
        scmd.Connection = scon;
        scmd.ExecuteNonQuery();
        scmd.Dispose();
        scon.Close();

        datagrid.EditIndex = -1;

        getStuData();

    }

    protected void datagrid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "DEL")
        {
            int i = Convert.ToInt32(e.CommandArgument);
            Label sid = datagrid.Rows[i].FindControl("sid") as Label;
            SqlConnection scon = new SqlConnection(database);
            scon.Open();
            SqlCommand scmd = new SqlCommand();
            scmd.CommandText = "update stu_result set stu_sts = 'off' where S_id ='" +sid.Text+ "'";
            scmd.Connection = scon;
            scmd.ExecuteNonQuery();
            scmd.Dispose();
            scon.Close();
            datagrid.EditIndex = -1;
            getStuData();

        }
    }

    protected void datagrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        datagrid.EditIndex = -1;
        getStuData();
    }

    protected void reset_Click(object sender, EventArgs e)
    {
        clr();

    }

    protected void cmbsid_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select Student_Name from student_data where S_id = '" + cmbsid.SelectedValue + "'";
        cmd.Connection = con;
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.HasRows)
        {
            sdr.Read();
            txtsname.Text = sdr["Student_Name"].ToString();
        }

        sdr.Close();
        cmd.Dispose();
        con.Close();
    }


}
 