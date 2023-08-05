using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class notes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {

    }

    protected void note_Click(object sender, EventArgs e)
    {
        Response.Redirect("notes/clanguage.pdf");
    }

    protected void symbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("notes/clanguage.pdf");
    }
}