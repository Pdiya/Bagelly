<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="addsubcategory.aspx.cs" Inherits="addsubcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br /><br /><br /><br /><br /><br />
  <section class="text-gray-600 body-font relative">
  <div class="container px-5 py-24 mx-auto m-40">
    <div class="flex flex-col text-center w-full mb-12 mt-12">
      <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900">Add Sub Category</h1>
      
    </div>
    <div class="lg:w-1/2  md:w-2/3 mx-auto ">
      <div class="flex flex-wrap -m-2 ">
        <div class="p-2 w-full">
         <div class="relative">
          <asp:Label ID="Label1" runat="server" Text="Main Category Name" class="leading-7 text-xxl text-gray-600 pb-10"></asp:Label><br /><br />
          <asp:DropDownList ID="ddl_main" runat="server" CssClass="form-control w-25"></asp:DropDownList><br /><br />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select Main Category" ControlToValidate="ddl_main" Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>

          </div>
           
          <div class="relative">
          <asp:Label ID="lbl_brand" runat="server" Text="Sub Category Name" class="leading-7 text-xxl text-gray-600 pb-10"></asp:Label><br /><br />

          <asp:TextBox ID="txt_subcat" runat="server" class="w-9/12 bg-white rounded border border-gray-500 focus:border-indigo-700 focus:ring-2 focus:ring-indigo-200 text-xl outline-none text-gray-700 py-1 px-4 leading-10"></asp:TextBox>
          </div>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Sub Category Name required" ControlToValidate="txt_subcat" Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>

          <br /><br />
          <asp:Button ID="btn_addsubcat" runat="server" Text="Add Sub Category" 
                class="btn btn-primary btn-lg flex mx-auto text-white m-10" onclick="btn_addsubcat_Click"  
                ></asp:Button>
                <br /><br />
        </div>
        <div class="p-2 w-full">
        </div>
      </div>
    </div>


     <h3>All Sub Categories</h3>
     <div class="panel panel-default">
       
          <hr />
          <asp:Repeater ID="rp" runat="server">
          <HeaderTemplate>
            <table class="table table-borderless">
         <thead>
    <tr class="text-center">
      <th scope="col">#</th>
      <th scope="col">Main Category Id</th>
       <th scope="col">Sub Category</th>
    </tr>
  </thead>
  <tbody>
          </HeaderTemplate>

          <ItemTemplate>
           <tr class="text-center">
      <th scope="row"><%# Eval("id")%> </th>
       <td><%# Eval("maincatid")%></td>
      <td><%# Eval("catname")%></td>
      
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

