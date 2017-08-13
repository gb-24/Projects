using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class bill : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ToString());

        string userid = Request.QueryString["userid"];

        string search = "select * from usr where usr_id='" + userid + "'";
        cmd = new SqlCommand(search, cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label16.Text = dr[0].ToString();
            Label17.Text = dr[1].ToString();
            Label18.Text = dr[2].ToString();
            Label19.Text = dr[3].ToString();
            Label20.Text = dr[4].ToString();
            Label21.Text = dr[5].ToString();
            Label22.Text = dr[6].ToString();
        }
        dr.Close();
        cn.Close();

        search = "select * from orderr where usr_id='" + userid + "'";
        cmd = new SqlCommand(search, cn);
        cn.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label23.Text = dr[0].ToString();
            Label24.Text = dr[1].ToString();
            Label25.Text = dr[2].ToString();
            Label26.Text = dr[4].ToString();
            Label27.Text = dr[5].ToString();
            Label28.Text = dr[6].ToString();
        }
        dr.Close();
        cn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label29.Text = "<b>CASH ON DELIVERY!!!!</b>";
    }
}