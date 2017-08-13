using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class empdetails : System.Web.UI.Page
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

        if (!IsPostBack)
        {
            FillGrid();
        }
    }

    public void FillGrid()
    {
        string select = "select * from emp";
        SqlDataAdapter da = new SqlDataAdapter(select, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        FillGrid();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        FillGrid();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string designation = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string outlet = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string salary = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        string id = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;

        string update = "update emp set desig='" + designation + "', outlet='" + outlet + "', sal='" + salary + "' where emp_id='" + id + "'";
        
        cmd = new SqlCommand(update, cn);
        cn.Open();
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Write("Record Updated!!!");
        }
        cn.Close();
        GridView1.EditIndex = -1;
        FillGrid();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
}