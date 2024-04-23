using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class addproduct : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindbrand();
            bindmaincat();
            bindgender();
            ddlsubcategory.Enabled = false;
           
        }
      
    }

    private void bindgender()
    {
        SqlCommand cmd = new SqlCommand("select * from tb_gender with(nolock) ", con);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            ddlgander.DataSource = dt;
            ddlgander.DataTextField = "name";
            ddlgander.DataValueField = "id";
            ddlgander.DataBind();
            ddlgander.Items.Insert(0, new ListItem("-select-", "0"));
        }
    }

    protected void ddl_cat_SelectIndexChanged(object sender, EventArgs e)
    {
        ddlsubcategory.Enabled = true;
        int maincatid = Convert.ToInt32(ddlcategory.SelectedItem.Value);
        SqlCommand cmd = new SqlCommand("select * from tb_subcategory where maincatid='" + ddlcategory.SelectedItem.Value + "' ", con);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            ddlsubcategory.DataSource = dt;
            ddlsubcategory.DataTextField = "catname";
            ddlsubcategory.DataValueField = "id";
            ddlsubcategory.DataBind();
            ddlsubcategory.Items.Insert(0, new ListItem("-select-", "0"));
        }
    }

    private void bindmaincat()
    {
        SqlCommand cmd = new SqlCommand("select * from tb_category", con);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            ddlcategory.DataSource = dt;
            ddlcategory.DataTextField = "maincatid";
            ddlcategory.DataValueField = "id";
            ddlcategory.DataBind();
            ddlcategory.Items.Insert(0, new ListItem("-select-", "0"));
        }
    }

    private void bindbrand()
    {
        SqlCommand cmd = new SqlCommand("select * from tb_brand", con);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            ddlbrand.DataSource = dt;
            ddlbrand.DataTextField = "name";
            ddlbrand.DataValueField = "id";
            ddlbrand.DataBind();
            ddlbrand.Items.Insert(0, new ListItem("-select-", "0"));
        }
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        String del = "";
        if (chk_delivery.Checked)
        {
            del = "True";
        }
        else
        {
            del = "False";
        }

        String day = "";
        if (chk_return.Checked)
        {
            day = "True";
        }
        else
        {
            day = "False";
        }


        String cod = "";
        if (chk_cod.Checked)
        {
            cod = "True";
        }
        else
        {
            cod = "False";
        }
        if (fuimg01.HasFile)
        {
            string savepath = Server.MapPath("~/images/product/");
            if (!Directory.Exists(savepath))
            {
                Directory.CreateDirectory(savepath);
            }
            string extension = Path.GetExtension(fuimg01.PostedFile.FileName);
            fuimg01.SaveAs(savepath + "\\" + fuimg01.PostedFile.FileName);
        }
      
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into tb_product (pro_name,pro_price,pro_sp,brandid,catid,subcatid,gender,description,details,care,delivery,dayreturn,cod,pro_image) values ('" + txt_pname.Text + "', '" + txt_price.Text + "', '" + txt_sprice.Text + "',  '" + ddlbrand.SelectedItem.Value + "', '" + ddlcategory.SelectedItem.Value + "', '" + ddlsubcategory.SelectedItem.Value + "', '" + ddlgander.SelectedItem.Value + "','" + txt_desc.Text + "','" + txt_details.Text + "','" + txt_care.Text + "','" + del + "','" + day + "','" + cod + "','" + fuimg01.PostedFile.FileName + "')";
        con.Open();
        Int64 pid = Convert.ToInt64(cmd.ExecuteScalar());


        //Insert qtysize
        for (int i = 0; i < cksize.Items.Count; i++)
        {
            if (cksize.Items[i].Selected == true)
            {
                Int64 size = Convert.ToInt64(cksize.Items[i].Value);
                int qty = Convert.ToInt32(txt_qty.Text);
                SqlCommand cmd2 = new SqlCommand("insert into tb_prdsizeqty (sizeid,qty) values('" + size + "','" + qty + "')", con);
                cmd2.ExecuteNonQuery();
            }
        }

        //insert images
        //if (fuimg01.HasFile)
        //{ 
        //    string savepath=Server.MapPath("~/images/product/");
        //    if (!Directory.Exists(savepath))
        //    {
        //        Directory.CreateDirectory(savepath);
        //    }
        //    string extension = Path.GetExtension(fuimg01.PostedFile.FileName);
        //    fuimg01.SaveAs(savepath+"\\"+txt_pname.Text.ToString().Trim());
        //    //  Response.Write("<script>alert('" + txt_pname.Text.ToString().Trim() + "')</script>");
        //    SqlCommand cmd3 = new SqlCommand("insert into tb_image (iname,iextension) values('"+txt_pname.Text.ToString().Trim()+"','"+extension+"')", con);
        //    cmd3.ExecuteNonQuery();
        //}

           // cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Product Added') </script>");


    }

    protected void ddl_gender_SelectIndexChanged(object sender, EventArgs e)
    {
        string del = "";
        ddlgander.Enabled = true;
        int maincatid = Convert.ToInt32(ddlcategory.SelectedItem.Value);
        
        SqlCommand cmd = new SqlCommand("select * from tb_size where brandid='" + ddlbrand.Text + "' and catid='" + ddlcategory.SelectedItem.Value + "' and subcatid='" + ddlsubcategory.SelectedItem.Value + "' and genderid='" + ddlgander.SelectedItem.Value + "' ", con);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            cksize.DataSource = dt;
            cksize.DataTextField = "name";
            cksize.DataValueField = "id";
            cksize.DataBind();

        }
    }
}