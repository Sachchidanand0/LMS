using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Library : System.Web.UI.MasterPage
{
    
    
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            
            if (Session["role"] == null || Session["role"].ToString() == "")
            {
               
                ul.Visible = true; //user login
                su.Visible = true; //sign up
                logout.Visible = false; // logout
                hello.Visible = false; // hello user

                adl.Visible = true;// admin login
                am.Visible = false; // author management
                pm.Visible = false; // publisher management
                bi.Visible = false; // book inventory
                booki.Visible = false; // book lissuing
                mm.Visible = false; // member management

            }
            else if (Session["role"].ToString() == "user")
            {
                adl.Visible = true;// admin login
                am.Visible = false; // author management
                pm.Visible = false; // publisher management
                bi.Visible = false; // book inventory
                booki.Visible = false; // book lissuing
                mm.Visible = false; // member management

                ul.Visible = false; //user login
                su.Visible = false; //sign up
                logout.Visible = true; // logout
                hello.Visible = true; // hello user
                hello.Text = "Hello " + Session["fullname"].ToString(); 
            }
            else if (Session["role"].ToString() == "Admin")
            {
                adl.Visible = false;// admin login
                am.Visible = true; // author management
                pm.Visible = true; // publisher management
                bi.Visible = true; // book inventory
                booki.Visible = true; // book lissuing
                mm.Visible = true; // member management

                ul.Visible = false; //user login
                su.Visible = false; //sign up
                logout.Visible = true; // logout
                hello.Visible = true; // hello user
                hello.Text = "Hello Admin";
               
            }
        }
        catch (Exception ex)
        {
            Response.Write("<sript>alert('" + ex.Message + "');</script>");
        }

    }

    protected void huser_Click(object sender, EventArgs e)
    {
        if (Session["role"].ToString() == "Admin")
        {
            Response.Redirect("request.aspx");
        }
        else
        {

            Response.Redirect("userprofile.aspx");
        }
    }

    protected void adl_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminlogin.aspx");
    }

    protected void am_Click(object sender, EventArgs e)
    {
        Response.Redirect("author.aspx");
    }

    protected void pm_Click(object sender, EventArgs e)
    {
        Response.Redirect("publisher.aspx");
    }

    protected void bi_Click(object sender, EventArgs e)
    {
        Response.Redirect("adBookInventory.aspx");
    }

    protected void booki_Click(object sender, EventArgs e)
    {
        Response.Redirect("adbookissuing.aspx");
    }

    protected void mm_Click(object sender, EventArgs e)
    {
        Response.Redirect("admemManagement.aspx");
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session["username"] = "";
        Session["fullname"] ="";
        Session["role"] = ""; 
        Session["status"] = "";

        ul.Visible = true; //user login
        su.Visible = true; //sign up
        logout.Visible = false; // logout
        hello.Visible = false; // hello user

        adl.Visible = true;// admin login
        am.Visible = false; // author management
        pm.Visible = false; // publisher management
        bi.Visible = false; // book inventory
        booki.Visible = false; // book lissuing
        mm.Visible = false; // member management
        Response.Redirect("homepage.aspx");
    }

    protected void vb_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewbook.aspx");
    }
}
