using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class bookhalls : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ToString());
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string available = "select status from outlet where outlet_no='"+TextBox2.Text+"'";

        cmd = new SqlCommand(available, cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            HiddenField1.Value = dr[0].ToString();
        }
        dr.Close();
        cn.Close();

        if (HiddenField1.Value == "Available")
        {
            string bookno = new Random().Next(100000, 199999).ToString();
            string date = DateTime.Now.ToString("HH:mm:ss tt");
            string insert = "insert into book values('" + bookno + "', '" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + date + "')";

            cmd = new SqlCommand(insert, cn);
            cn.Open();
            int k = cmd.ExecuteNonQuery();
            cn.Close();

            string update = "update outlet set status='Booked' where outlet_no='" + TextBox2.Text + "'";

            cmd = new SqlCommand(update, cn);
            cn.Open();
            int i = cmd.ExecuteNonQuery();
            cn.Close();

            if ((k > 0) && (i > 0))
            {
                Response.Redirect("booked.aspx?useri=" + TextBox1.Text);
            }
        }

        else
        {
            Response.Write("Hall Not Available!!!!");
        }
    }
}