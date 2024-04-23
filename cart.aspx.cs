//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Data;
//using System.Data.SqlClient;
//using System.Configuration;
//using System.Data.Sql;
//using System.Data.SqlClient;

//public partial class cart : System.Web.UI.Page
//{
//    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

//    protected void Page_Load(object sender, EventArgs e)
//    {
//        if (con.State == ConnectionState.Open)
//        {
//            con.Close();
//        }
//        con.Open();

//        if (!IsPostBack)
//        {
//            DataTable dt = new DataTable();
//            DataRow dr;
//            dt.Columns.Add("pid");
//            dt.Columns.Add("pro_name");
//            dt.Columns.Add("pro_sp");
//            dt.Columns.Add("quantity");
//            dt.Columns.Add("totalprice");

//            if (Request.QueryString["id"] != null)
//            {
//                if (Session["buyitem"] == null)
//                {
//                    dr = dt.NewRow();
//                    string sql = "select * from tb_product where pid =" + Request.QueryString["id"];
//                    SqlCommand cmd = new SqlCommand();
//                    cmd.CommandText = sql;
//                    cmd.Connection = con;
//                    SqlDataAdapter da = new SqlDataAdapter();
//                    da.SelectCommand = cmd;
//                    DataSet ds = new DataSet();
//                    da.Fill(ds);
//                    dr["pid"] = ds.Tables[0].Rows[0]["pid"].ToString();
//                    dr["pro_name"] = ds.Tables[0].Rows[0]["pro_name"].ToString();
//                    dr["pro_image"] = ds.Tables[0].Rows[0]["pro_image"].ToString();
//                    dr["pro_sp"] = ds.Tables[0].Rows[0]["pro_sp"].ToString();
//                    dr["quantity"] = Request.QueryString["quantity"];

//                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["pro_sp"].ToString());
//                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
//                    int totalprice = price * quantity;
//                    dr["totalprice"] = totalprice;

//                    dt.Rows.Add(dr);
//                    GridView1.DataSource = dt;
//                    GridView1.DataBind();
//                    Session["buyitem"] = dt;
//                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
//                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
//                    Response.Redirect("cart.aspx");

//                }
//                else
//                { 
//                    dt=(DataTable)Session["buyitem"];
//                    int sr;
//                    sr = dt.Rows.Count;
//                    dr = dt.NewRow();
//                    string sql = "select * from tb_product where pid =" + Request.QueryString["id"];
//                    SqlCommand cmd = new SqlCommand();
//                    cmd.CommandText = sql;
//                    cmd.Connection = con;
//                    SqlDataAdapter da = new SqlDataAdapter();
//                    da.SelectCommand = cmd;
//                    DataSet ds = new DataSet();
//                    da.Fill(ds);
//                    dr["pid"] = ds.Tables[0].Rows[0]["pid"].ToString();
//                    dr["pro_name"] = ds.Tables[0].Rows[0]["pro_name"].ToString();
//                    dr["pro_image"] = ds.Tables[0].Rows[0]["pro_image"].ToString();
//                    dr["pro_sp"] = ds.Tables[0].Rows[0]["pro_sp"].ToString();
//                    dr["quantity"] = Request.QueryString["quantity"];

//                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["pro_sp"].ToString());
//                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
//                    int totalprice = price * quantity;
//                    dr["totalprice"] = totalprice;

//                    dt.Rows.Add(dr);
//                    GridView1.DataSource = dt;
//                    GridView1.DataBind();
//                    Session["buyitem"] = dt;
//                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
//                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
//                    Response.Redirect("cart.aspx");

//                }

//            }
//                else
//                {
//                    dt = (DataTable)Session["buyitem"];
//                    GridView1.DataSource = dt;
//                    GridView1.DataBind();
//                    if (GridView1.Rows.Count > 0)
//                    {
//                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
//                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
//                    }
//                }
//            lbl_cart.Text = GridView1.Rows.Count.ToString();
//        }
//    }

//    public int grandtotal()
//    {
//        DataTable dt = new DataTable();
//        dt=(DataTable)Session["buyitem"];
//        int nrow = dt.Rows.Count;
//        int i = 0;
//        int gtotal = 0;
//        while (i < nrow)
//        {
//            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
//            i = i + 1;
//        }
//        return gtotal;
//    }

//    protected void GridView1_RowDeleting(object sender, GridViewDeletedEventArgs)
//    {
        
//            DataTable dt = new DataTable();
//            dt=(DataTable)Session["buyitem"];
//        for(int i=0;i<=dt.Rows.Count-1;i++)
//        {
//            int sr;
//            int sr1;
//            String qdata;
//            String dtdata;
//             sr = Convert.ToInt32(dt.Rows[i]["pid"].ToString()); 
//             TableCell cell=GridView1.Rows[e.RowIndex].Cells[0];
//            qdata=cell.Text;
//            dtdata=sr.ToString();
//            sr1=Convert.ToInt32(qdata);

//            if(sr==sr1)
//            {
//                dt.Rows[i].Delete();
//                dt.AcceptChanges();
//                break;
//            }
//        }

//        for(int i=1; i<=dt.Rows.Count;i++)
//        {
//            dt.Rows[i-1]["pid"]=i;
//            dt.AcceptChanges();
//        }

//        Session["buyitem"]=dt;
//        Response.Redirect("cart.aspx");
//    }
//}