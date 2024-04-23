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

public partial class register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
    }

    private void clr()
    {
        reg_username.Text = String.Empty;
        reg_email.Text = String.Empty;
        reg_pass.Text = String.Empty;
    }
    protected void reg_btn_Click(object sender, EventArgs e)
    {
       
        
        String user = "user";
        String sql = "insert into tb_user(username,email,password,usertype) values ('" + reg_username.Text + "','" + reg_email.Text + "', '" + reg_pass.Text + "','" + user + "')";

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = sql;
        cmd.ExecuteNonQuery();
        //Session["username"] = reg_username.Text;
        Response.Redirect("~/Default.aspx");                                       ś
        //Response.Write("<script> alert('Registered Successfully!') </script>");
        //clr();
    }

    protected void news_btn_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into tb_news values ('" + txt_email.Text + "')";
        cmd.ExecuteNonQuery();
    }
}