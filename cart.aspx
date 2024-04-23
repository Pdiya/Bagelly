<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
     <meta charset="utf-8" >
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" />
    <link href="file:///C:/Users/2124B/Downloads/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="stylesheet.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <nav class="navbar navbar-expand-lg  fixed-top ">
  <div class="container-fluid sticky-top">
    <a class="navbar-brand" href="adminhome.aspx">
<img id="logo" src="icons/logo.png" height="70px" class="rounded-circle" /></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
         <li class="nav-item">
          <a class="nav-link  font-weight-bolder text-white" aria-current="page" href="Default.aspx">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active font-weight-bolder text-white" aria-current="page" href="Default.aspx">Shop</a>
        </li>
       
      </ul>
         
      </div>

      <div class="d-flex ml-auto">
          <ul class="navbar-nav me-auto mb-5 mb-lg-0 ml-auto">
        
        
       <li class="nav-item">
          <a class="nav-link active font-weight-bolder text-white" aria-current="page" href="login.aspx">
          <img src="icons/login.png" height="30px" width="30px" />
          LogOut<a class="nav-link active font-weight-bolder text-white mt-5 pt-4" aria-current="page" href="cart.aspx"><img src="icons/shop.png" height="30px" width="30px" class="mt-5 float-right mr-4" /></a></a><asp:Label ID="lbl_cart" Text="" runat="server" class="badge  pt-4 text-black font-weight-bolder float-right"></asp:Label>




    &nbsp;</li>
      </ul>
      </div>
      </nav>
        </div>
        </div>
        </div>



 <a class="nav-link active font-weight-bolder text-white mt-5 pt-4" aria-current="page" href="cart.aspx">&nbsp;</a><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None" Height="323px" 
        ShowFooter="True" Width="1174px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="pid" HeaderText="S.No" />
            <asp:BoundField DataField="pro_name" HeaderText="Product Name" />
            <asp:ImageField DataImageUrlField="pro_image" HeaderText="Product Image">
            </asp:ImageField>
            <asp:BoundField DataField="pro_sp" HeaderText="Price" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>




    </div>
    </form>
</body>
</html>
