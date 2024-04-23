<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="addsize.aspx.cs" Inherits="addsize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br /><br /><br /><br /><br /><br />
  <section class="text-gray-600 body-font relative">
  <div class="container px-5 py-24 mx-auto m-40">
    <div class="flex flex-col text-center w-full mb-12 mt-12">
      <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900">Add Size</h1>
      
    </div>
    <div class="lg:w-1/2  md:w-2/3 mx-auto ">
      <div class="flex flex-wrap -m-2 ">
        <div class="p-2 w-full">
         <div class="relative">
          <asp:Label ID="Label2" runat="server" Text="Size Name" class="leading-7 text-xxl text-gray-600 pb-10"></asp:Label><br />
          <asp:TextBox ID="txt_size" runat="server" class="w-9/12 bg-white rounded border border-gray-500 focus:border-indigo-700 focus:ring-2 focus:ring-indigo-200 text-xl outline-none text-gray-700 py-1 px-4 leading-10"></asp:TextBox>
          </div>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Size Name required" ControlToValidate="txt_size" Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>
           <br />
        
           <div class="relative">
          <asp:Label ID="Label1" runat="server" Text="Brand" class="leading-7 text-xxl text-gray-600 pb-10"></asp:Label>
          <asp:DropDownList ID="ddl_brand" runat="server" CssClass="form-control w-25"></asp:DropDownList><br />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select Brand Name " ControlToValidate="ddl_brand" Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>

          </div>
           
          <div class="relative">
          <asp:Label ID="lbl_brand" runat="server" Text="Category Name" class="leading-7 text-xxl text-gray-600 pb-10"></asp:Label><br />
          <asp:DropDownList ID="ddl_cat" runat="server" CssClass="form-control w-25" 
                  OnSelectedIndexChanged="ddl_cat_SelectIndexChanged" AutoPostBack="True"></asp:DropDownList><br />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Select Category " ControlToValidate="ddl_cat" Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>

          </div>

           <div class="relative">
          <asp:Label ID="Label3" runat="server" Text="Sub Category Name" class="leading-7 text-xxl text-gray-600 pb-10"></asp:Label><br />
          <asp:DropDownList ID="ddl_sub" runat="server" CssClass="form-control w-25"></asp:DropDownList><br />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select Sub Category" ControlToValidate="ddl_sub" Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>

          </div>

          <div class="relative">
          <asp:Label ID="Label4" runat="server" Text="Gender" class="leading-7 text-xxl text-gray-600 pb-10"></asp:Label><br />
          <asp:DropDownList ID="ddl_gender" runat="server" CssClass="form-control w-25"></asp:DropDownList><br /><br />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select Gender" ControlToValidate="ddl_gender" Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>

          </div>
         
          <asp:Button ID="btn_addsize" runat="server" Text="Add Size" 
                class="btn btn-primary btn-lg flex mx-auto text-white m-10" onclick="btn_addsize_Click"   
                ></asp:Button>
                <br /><br />
        </div>
        <div class="p-2 w-full">
        </div>
      </div>
    </div>

     <h3>All Sizes</h3>
     <div class="panel panel-default">
       
          <hr />
          <asp:Repeater ID="rp" runat="server">
          <HeaderTemplate>
            <table class="table table-borderless">
         <thead>
    <tr class="text-center">
      <th scope="col">#</th>
      <th scope="col">Size Name</th>
      <th scope="col">Brand Id</th>
      <th scope="col">Category Id</th>
      <th scope="col">Sub Category Id</th>
      <th scope="col">Gender Id</th>
    </tr>
  </thead>
  <tbody>
          </HeaderTemplate>

          <ItemTemplate>
           <tr class="text-center">
      <th scope="row"><%# Eval("id")%> </th>
      <td><%# Eval("name")%></td>
      <td><%# Eval("brandid")%></td>
      <td><%# Eval("catid")%></td>
      <td><%# Eval("subcatid")%></td>
      <td><%# Eval("genderid")%></td>
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

