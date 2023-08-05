using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class videosave : System.Web.UI.Page
{
     static string glob_filepath;
    protected void Page_Load(object sender, EventArgs e)
        {

    }



    void addvideo()
    {
        

    }

    protected void btn_Click(object sender, EventArgs e)
    {
        string filepath = "ProjectVideo/php/Lecture1.mp4";
        string filename = Path.GetFileName(file.PostedFile.FileName);
        file.SaveAs(Server.MapPath("ProjectVideo/php/" + filename));
        filepath = "ProjectVideo/php/" + filename;


        SqlConnection con = new SqlConnection();
        con.ConnectionString = "server=.; initial catalog=videoLecture; user id=sa; password=1234;";
        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into videos(ID,name,video_link,sts) values('" + txtid.Text.Trim() + "','" + txtname.Text.Trim() + "','" + filepath + "','"+type.Text.Trim()+"')";
       cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();

    }
}