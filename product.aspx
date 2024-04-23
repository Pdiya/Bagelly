<%@ Page Title="" Language="C#" MasterPageFile="~/userhome.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

          <a class="nav-link active font-weight-bolder text-white mt-5 pt-4" aria-current="page" href="cart.aspx">
          <img src="icons/shop.png" height="30px" width="30px" class="mt-5 float-right mr-4" />
          </a>
          <asp:Label ID="lbl_cart" Text="" runat="server" class="badge  pt-4 text-black font-weight-bolder float-right"></asp:Label>

    
        

</asp:Content>






<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br /><br /><br /><br /><br /><br />

Welcome user

<div class="container mt-100">

                               
 <div class="container">


     <asp:DataList ID="DataList1" 
         runat="server" DataKeyField="pid" 
         DataSourceID="SqlDataSource1" RepeatColumns="4" 
         RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
         <ItemTemplate>
             <table class="w-100">
                 <tr>
                     <td>
                         <asp:Image ID="Image1" runat="server" 
                             Height="271px" 
                             ImageUrl='<%# "images/product/"+Eval("pro_image") %>' 
                             Width="271px" />
                     </td>
                 </tr>
                 <tr>
                     <td style="height: 26px">
                         &nbsp;Product Id:
                         <asp:Label ID="Label6" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td style="height: 26px">
                         Product name:
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("pro_name") %>'></asp:Label>
                         &nbsp;
                     </td>
                 </tr>
                 <tr>
                     <td>
                         Price:<asp:Label ID="Label2" 
                             runat="server" 
                             Text='<%# Eval("pro_sp") %>'></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         Description:
                         <asp:Label ID="Label3" runat="server" 
                             Text='<%# Eval("description") %>'></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         Care:
                         <asp:Label ID="Label4" runat="server" 
                             Text='<%# Eval("care") %>'></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         Details:
                         <asp:Label ID="Label5" runat="server" 
                             Text='<%# Eval("details") %>'></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         Quantity:
                         <asp:DropDownList ID="DropDownList1" runat="server" Width="61px">
                             <asp:ListItem>1</asp:ListItem>
                             <asp:ListItem>2</asp:ListItem>
                             <asp:ListItem>3</asp:ListItem>
                             <asp:ListItem>4</asp:ListItem>
                             <asp:ListItem>5</asp:ListItem>
                         </asp:DropDownList>
                     </td>
                 </tr>
             </table>
             <asp:Image ID="Image2" runat="server" Height="48px" ImageUrl="~/icons/cart.png" Width="50px" CommandArgument='<%#Eval("pid") %>' CommandName="cart" />
             <br />
             <br />
         </ItemTemplate>
     </asp:DataList>
     
     <asp:SqlDataSource ID="SqlDataSource1" 
         runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         SelectCommand="SELECT * FROM [tb_product]">
     </asp:SqlDataSource>
     
  <!---  <div class="row">
    <asp:Repeater ID="r1" runat="server">
     <ItemTemplate>
   <div class="col-lg-4 mb-4"> 
<div class="card">
  <img class="card-img-top" src="images/product/<%# Eval("iname") %>" height="300px">
  <div class="card-body">
    <h5 class="card-title"><%# Eval("pro_name") %></h5>
    <p class="card-text"><%# "cvfvf" %></p>
    <h6 class="fw-lighter"><%# "cvfvf"%></h6>
     <h6 class="fw-lighter"><%# "cvfvf"%></h6>
      <asp:Button ID="btn_cart" runat="server" Text="Add to Cart" class="btn btn-success" />
  </div>
</div>
</div>
</ItemTemplate>
</asp:Repeater>
</div>---->





</div>




        </div>
</asp:Content>
