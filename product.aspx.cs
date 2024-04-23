using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class product : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();

        DataTable dt = new DataTable();
        dt=(DataTable)Session["buyitems"];
        if (dt != null)
        {
            lbl_cart.Text = dt.Rows.Count.ToString();
        }
        else
        {
            lbl_cart.Text = "0";
        }
    }

    private void bindbrand()
    {
        SqlCommand cmd = new SqlCommand("procproduct", con);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        r1.DataSource = dt;
        r1.DataBind();


    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
        Response.Redirect("cart.aspx?id="+e.CommandArgument.ToString()+"&quantity="+dlist.SelectedItem.ToString());
    }
}