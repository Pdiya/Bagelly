using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class addbrand : System.Web.UI.Page
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
            bindbrandrp();
        }

    }

    private void bindbrandrp()
    {
        SqlCommand cmd = new SqlCommand("select * from tb_brand",con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        rp.DataSource = dt;
        rp.DataBind();

      
    }

    protected void btn_addbrand_Click(object sender, EventArgs e)
    {

        String sql = "insert into tb_brand(name) values ('" + txt_brand.Text + "')";

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = sql;
        cmd.ExecuteNonQuery();
        //Session["username"] = reg_username.Text;
       // Response.Redirect("~/Default.aspx");
        Response.Write("<script> alert('Brand Added') </script>");
        clr();
    }

    private void clr()
    {
        txt_brand.Text = String.Empty;
       
    }
}