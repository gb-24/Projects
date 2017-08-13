using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class placeorder : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ToString());
    }

    protected void next_Click(object sender, EventArgs e)
    {
        Response.Redirect("abtus.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string insert = "insert into usr values('"+TextBox1.Text+"', '"+ TextBox2.Text+"', '"+ TextBox3.Text+"', '"+ TextBox4.Text+"', '"+ TextBox5.Text+"', '"+ TextBox6.Text+"', '"+ TextBox7.Text+"')";
        cmd = new SqlCommand(insert, cn);
        cn.Open();
        int i = cmd.ExecuteNonQuery();
        cn.Close();

        int itemc = int.Parse(TextBox8.Text);

        string price = "select itm_name, itm_price from itm where itm_code='" + itemc + "'";
        cmd = new SqlCommand(price, cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            HiddenField1.Value = dr[0].ToString();
            HiddenField2.Value = dr[1].ToString();
        }
        dr.Close();
        cn.Close();

        int bill = int.Parse(TextBox9.Text) * int.Parse(HiddenField2.Value);

        string odate = DateTime.Now.ToString("dd/MM/yyyy");
        string otime = DateTime.Now.ToString("HH:mm:ss tt");
        string dtime = "within 30 minutes of ordering";
        string orderc = new Random().Next(10000, 19999).ToString();
        string details = TextBox9.Text + " \"" + HiddenField1.Value + "\"";
        Label10.Text += orderc + odate + bill + TextBox1.Text + otime + dtime + details;
        insert = "insert into orderr values('" + orderc + "', '" + odate + "', '" + bill + "', '" + TextBox1.Text + "', '" + otime + "', '" + dtime + "', '" + details + "')";
        cmd = new SqlCommand(insert, cn);
        cn.Open();
        int k = cmd.ExecuteNonQuery();
        cn.Close();

        if ((i > 0) && (k>0))
        {
            Response.Redirect("bill.aspx?userid="+TextBox1.Text);
        }
    }
}