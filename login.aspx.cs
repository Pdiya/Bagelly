using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
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
            if (Request.Cookies["uname"] != null && Request.Cookies["pwd"] != null)
            {
                log_user.Text = Request.Cookies["uname"].Value;
                log_pass.Text = Request.Cookies["pwd"].Value;
                
            }
        }
    }
    protected void log_btn_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        String user = log_user.Text;
        String pass = log_pass.Text;
        cmd.CommandText = "select count(*) from tb_user where username='" + user + "' and password='" + pass + "' ";
        cmd.ExecuteNonQuery();

        SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        Adapter.Fill(dt);

        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            while (reader.Read())
            {
                string usertype = reader.GetString(0);
                if (usertype == "user")
                {
                    //Session["usename"] = log_user.Text;
                    Response.Redirect("~/userhome.aspx");
                }

                if (usertype == "admin")
                {
                    //Session["usename"] = log_user.Text;
                    Response.Redirect("~/adminhome.aspx");
                }
            }
        }
        Response.Write("<script> alert('Logged In Successfully!') </script>");
    }
    protected void news_btn_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into tb_news values ('" + txt_email.Text + "')";
        cmd.ExecuteNonQuery();
        
    }

    
}