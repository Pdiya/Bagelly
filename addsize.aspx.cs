using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class addsize : System.Web.UI.Page
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
            bindbrand();
            bindmaincat();
            bindgender();

        }

        if (!IsPostBack)
        {
            bindsizerp();
        }
    }

    private void bindsizerp()
    {
        SqlCommand cmd = new SqlCommand("select * from tb_size", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        rp.DataSource = dt;
        rp.DataBind();
    }
    protected void btn_addsize_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into tb_size (name,brandid,catid,subcatid,genderid) values ('" + txt_size.Text + "', '" + ddl_brand.SelectedItem.Value + "', '" + ddl_cat.SelectedItem.Value + "', '" + ddl_sub.SelectedItem.Value + "', '" + ddl_gender.SelectedItem.Value + "')";
        cmd.ExecuteNonQuery();
        //Session["username"] = reg_username.Text;
        // Response.Redirect("~/Default.aspx");
        Response.Write("<script> alert('Added') </script>");


        ddl_brand.ClearSelection();
        ddl_brand.Items.FindByValue("0").Selected = true;

        ddl_cat.ClearSelection();
        ddl_cat.Items.FindByValue("0").Selected = true;

        ddl_sub.ClearSelection();
        ddl_sub.Items.FindByValue("0").Selected = true;

        ddl_gender.ClearSelection();
        ddl_gender.Items.FindByValue("0").Selected = true;
       
    }

    private void bindbrand()
    {
        SqlCommand cmd = new SqlCommand("select * from tb_brand", con);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            ddl_brand.DataSource = dt;
            ddl_brand.DataTextField = "name";
            ddl_brand.DataValueField = "id";
            ddl_brand.DataBind();
            ddl_brand.Items.Insert(0, new ListItem("-select-", "0"));
        }

       // clr();
    }


    private void bindgender()
    {
        SqlCommand cmd = new SqlCommand("select * from tb_gender with(nolock) ", con);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            ddl_gender.DataSource = dt;
            ddl_gender.DataTextField = "name";
            ddl_gender.DataValueField = "id";
            ddl_gender.DataBind();
            ddl_gender.Items.Insert(0, new ListItem("-select-", "0"));
        }

        // clr();
    }

    private void  bindmaincat()
    {
        SqlCommand cmd = new SqlCommand("select * from tb_category", con);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            ddl_cat.DataSource = dt;
            ddl_cat.DataTextField = "maincatid";
            ddl_cat.DataValueField = "id";
            ddl_cat.DataBind();
            ddl_cat.Items.Insert(0, new ListItem("-select-", "0"));
        }

        // clr();
    }

   

    protected void ddl_cat_SelectIndexChanged(object sender, EventArgs e)
    {
        int maincatid = Convert.ToInt32(ddl_cat.SelectedItem.Value);
        SqlCommand cmd = new SqlCommand("select * from tb_subcategory where maincatid='"+ddl_cat.SelectedItem.Value+"' ", con);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            ddl_sub.DataSource = dt;
            ddl_sub.DataTextField = "catname";
            ddl_sub.DataValueField = "id";
            ddl_sub.DataBind();
            ddl_sub.Items.Insert(0, new ListItem("-select-", "0"));
        }
    }


   
}