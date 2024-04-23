using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class addsubcategory : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();

        if (!IsPostBack)
        {
            maincat();
        }

        if (!IsPostBack)
        {
            bindsubrrp();
        }
    }

    private void bindsubrrp()
    {
        SqlCommand cmd = new SqlCommand("select * from tb_subcategory", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        rp.DataSource = dt;
        rp.DataBind();
    }
    

    private void clr()
    {
        txt_subcat.Text = String.Empty;
        ddl_main.ClearSelection();
        ddl_main.Items.FindByValue("0").Selected = true;

    }
    protected void btn_addsubcat_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into tb_subcategory (catname,maincatid) values ('" + txt_subcat.Text + "', '" + ddl_main.SelectedItem.Value + "')";
        cmd.ExecuteNonQuery();
        //Session["username"] = reg_username.Text;
        // Response.Redirect("~/Default.aspx");
        Response.Write("<script> alert('Sub Category Added') </script>");
        clr();
    }

    private void maincat()
    {
        SqlCommand cmd = new SqlCommand("select * from tb_category",con);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            ddl_main.DataSource = dt;
            ddl_main.DataTextField = "maincatid";
            ddl_main.DataValueField = "id";
            ddl_main.DataBind();
            ddl_main.Items.Insert(0,new ListItem("-select-","0"));
        }

        
        //Session["username"] = reg_username.Text;
        // Response.Redirect("~/Default.aspx");
        
        clr();
    }
}