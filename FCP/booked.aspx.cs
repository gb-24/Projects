using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class booked : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ToString());

        string useri = Request.QueryString["useri"];
        string search = "select * from book where usr_id='" + useri + "'";
        cmd = new SqlCommand(search, cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label6.Text = dr[0].ToString();
            Label7.Text = dr[1].ToString();
            Label8.Text = dr[2].ToString();
            Label9.Text = dr[3].ToString();
        }
        dr.Close();
        cn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label10.Text = "<b>Hall Booked</b>";
    }
}