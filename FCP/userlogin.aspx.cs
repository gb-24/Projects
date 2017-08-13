using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class userlogin : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ToString());
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string getlogincred = "select emp_name, emp_pass from emp where emp_name ='" + TextBox1.Text + "'";

        cmd = new SqlCommand(getlogincred, cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            HiddenField1.Value = dr[0].ToString();
            HiddenField2.Value = dr[1].ToString();
        }
        dr.Close();
        cn.Close();

        if((HiddenField1.Value == TextBox1.Text) && (HiddenField2.Value == TextBox2.Text))
        {
            Session["uname"] = TextBox1.Text;
            Response.Redirect("loader.aspx");
        }
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
}