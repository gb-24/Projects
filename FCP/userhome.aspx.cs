using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class userhome : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ToString());

        if (Session["uname"] != null)
        {
            string usrname = Session["uname"].ToString();
            string getvals = "select * from emp where emp_name='" + usrname + "'";
            cmd = new SqlCommand(getvals, cn);
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label10.Text = dr[0].ToString();
                Label11.Text = dr[1].ToString();
                Label12.Text = dr[2].ToString();
                Label13.Text = dr[4].ToString();
                Label14.Text = dr[5].ToString();
                Label15.Text = dr[6].ToString();
                Label16.Text = dr[7].ToString();
                Label17.Text = dr[8].ToString();
                Label18.Text = dr[9].ToString();
            }
            dr.Close();
            cn.Close();
        }

        else
        {
            Response.Redirect("userlogin.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;

        if (Session["uname"] != null)
        {
            string usrname = Session["uname"].ToString();
            string getvals = "select * from emp where emp_name='" + usrname + "'";
            cmd = new SqlCommand(getvals, cn);
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label28.Text = dr[0].ToString();
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[4].ToString();
                Label29.Text = dr[5].ToString();
                Label30.Text = dr[6].ToString();
                Label31.Text = dr[7].ToString();
                TextBox4.Text = dr[8].ToString();
                TextBox5.Text = dr[9].ToString();
            }
            dr.Close();
            cn.Close();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string update = "update emp set emp_name='" + TextBox1.Text + "', emp_email='" + TextBox2.Text + "', addr='" + TextBox3.Text + "', contactno='" + TextBox4.Text + "', dob='" + TextBox5.Text + "' where emp_name='" + TextBox1.Text + "'";

        cmd = new SqlCommand(update, cn);
        cn.Open();
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Redirect("userhome.aspx");
        }
        cn.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if(Session["uname"] != null)
        {
            Session["uname"] = "";
            Session.Abandon();
            Response.Redirect("userlogin.aspx");
        }

        else
        {
            Response.Redirect("userlogin.aspx");
        }
    }
}