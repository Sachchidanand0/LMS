using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sPortal : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["userid"] !=null && Session["passcode"] != null && Session["userid"].ToString() != "" && Session["passcode"].ToString() != "")
        {
            sign.Visible = false;
            login.Visible = false;
            hey.Visible = true;
            logout.Visible = true;
            service.Visible = true;
            ulOfService.Visible = true;
            ServiceArrow.Visible = true;

            hey.Text ="Hello "+ Session["userid"].ToString().Substring(0, 6);
        }
        else
        {
            sign.Visible = true;
            login.Visible = true;
            hey.Visible = false;
            logout.Visible = false;
            service.Visible = false;
            ulOfService.Visible = false;
            ServiceArrow.Visible = false;

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

    protected void Clanguage_Click(object sender, EventArgs e)
    {
        Session["type"] = "Cprogramming";
        if (Session["type"].ToString() == "Cprogramming")
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

    protected void more_Click(object sender, EventArgs e)
    {
        
            Response.Redirect("videoContent.aspx");
      
    }

    protected void library_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/LibraryManagement/homepage.aspx");
    }

    protected void notes_Click(object sender, EventArgs e)
    {
        Response.Redirect("notes.aspx");
    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs e)
    {
        Response.Redirect("sLogin.aspx");
    }

    protected void sign_Click(object sender, EventArgs e)
    {

        Response.Redirect("studentReg.aspx");
    }

    protected void hey_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentProfile.aspx");
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session["userid"]= "";
        Response.Redirect("Default.aspx");
    }
}
