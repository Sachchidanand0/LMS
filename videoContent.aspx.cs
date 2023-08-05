using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class videoContent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void c_Click(object sender, EventArgs e)
    {
        Session["type"] = "Cprogramming";
        if (Session["type"].ToString() == "Cprogramming")
        {
            Response.Redirect("videolecture.aspx");
        }
       
        
    }



    protected void cplus_Click(object sender, EventArgs e)
    {
        Session["type"] = "c++";
        if (Session["type"].ToString() == "c++")
        {
            Response.Redirect("videolecture.aspx");
        }
    }

    protected void cmd_Click(object sender, EventArgs e)
    {
        Session["type"] = "cmd";
        if (Session["type"].ToString() == "cmd")
        {
            Response.Redirect("videolecture.aspx");
        }
    }

    protected void DB_Click(object sender, EventArgs e)
    {
        Session["type"] = "dbms";
        if (Session["type"].ToString() == "dbms")
        {
            Response.Redirect("videolecture.aspx");
        }
    }

    protected void php_Click(object sender, EventArgs e)
    {
        Session["type"] = "php";
        if (Session["type"].ToString() == "php")
        {
            Response.Redirect("videolecture.aspx");
        }
    }

    protected void dsa_Click(object sender, EventArgs e)
    {
        Session["type"] = "dsa";
        if (Session["type"].ToString() == "dsa")
        {
            Response.Redirect("videolecture.aspx");
        }
    }
}