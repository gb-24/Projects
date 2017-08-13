using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class adminhome : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ToString());

        if (Session["aemail"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }

        if (Session["aemail"] != null)
        {
            string adminemail = Session["aemail"].ToString();
            string getvals = "select * from admin where email='" + adminemail + "'";
            cmd = new SqlCommand(getvals, cn);
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label10.Text = dr[0].ToString();
                Label11.Text = dr[2].ToString();
                Label12.Text = dr[3].ToString();
            }
            dr.Close();
            cn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;

        if (Session["aemail"] != null)
        {
            string adminemail = Session["aemail"].ToString();
            string getvals = "select * from admin where email='" + adminemail + "'";
            cmd = new SqlCommand(getvals, cn);
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
                TextBox2.Text = dr[1].ToString();
                TextBox3.Text = dr[2].ToString();
            }
            dr.Close();
            cn.Close();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string update = "update admin set email='" + TextBox1.Text + "', addr='" + TextBox2.Text + "', contactno='" + TextBox3.Text + "' where email='" + TextBox1.Text + "'";

        cmd = new SqlCommand(update, cn);
        cn.Open();
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Redirect("adminhome.aspx");
        }
        cn.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
}