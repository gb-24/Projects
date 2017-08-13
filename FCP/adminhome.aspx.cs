using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["aemail"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["aemail"] != null)
        {
            Session["aemail"] = "";
            Session.Abandon();
            Response.Redirect("adminlogin.aspx");
        }

        else
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
}