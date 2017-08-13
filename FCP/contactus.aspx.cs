using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        txt_name.Text = "";
        txt_eid.Text = "";
        txt_msg.Value = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("Comment Posted to the admins mail!!!!");

        txt_name.Text = "";
        txt_eid.Text = "";
        txt_msg.Value = "";
    }
}