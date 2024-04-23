<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="addcategory.aspx.cs" Inherits="addcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<br /><br /><br /><br /><br /><br />
  <section class="text-gray-600 body-font relative">
  <div class="container px-5 py-24 mx-auto m-40">
    <div class="flex flex-col text-center w-full mb-12 mt-12">
      <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900">Add Category</h1>
      
    </div>
    <div class="lg:w-1/2  md:w-2/3 mx-auto ">
      <div class="flex flex-wrap -m-2 ">
        <div class="p-2 w-full ">
          <div class="relative">
          <asp:Label ID="lbl_brand" runat="server" Text="Category Name" class="leading-7 text-xxl text-gray-600 pb-10"></asp:Label>
          <asp:TextBox ID="txt_cat" runat="server"  class="w-9/12 bg-white rounded border border-gray-500 focus:border-indigo-700 focus:ring-2 focus:ring-indigo-200 text-xl outline-none text-gray-700 py-1 px-4 leading-10"></asp:TextBox>
          </div>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Category Name required" ControlToValidate="txt_cat" Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>

          <br /><br />
          <asp:Button ID="btn_addcat" runat="server" Text="Add Category" 
                class="btn btn-primary btn-lg flex mx-auto text-white m-10" onclick="btn_addcat_Click1" 
                ></asp:Button>
                <br /><br />
        </div>
        <div class="p-2 w-full">
       
         
        </div>
      </div>
    </div>

    <h3>All Brands</h3>
     <div class="panel panel-default">
       
          <hr />
          <asp:Repeater ID="rp" runat="server">
          <HeaderTemplate>
            <table class="table table-borderless">
         <thead>
    <tr class="text-center">
      <th scope="col">#</th>
      <th scope="col">Category</th>
    </tr>
  </thead>
  <tbody>
          </HeaderTemplate>

          <ItemTemplate>
           <tr class="text-center">
      <th scope="row"><%# Eval("id")%> </th>
      <td><%# Eval("maincatid")%></td>
    </tr>
          </ItemTemplate>

          <FooterTemplate>
           </tbody>
</table> 
          </FooterTemplate>
          
          </asp:Repeater>





  </div>
</section>


</asp:Content>

