<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br /><br /><br /><br /><br />
<section class="text-gray-600 body-font relative ">
  <div class="container px-10 py-40 mx-auto">
    <div class="flex flex-col text-center w-full mb-12 ">
      <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900">Add Product</h1>
    </div>


    <div class="lg:w-1/2 md:w-2/3 mx-auto px-">
      <div class="flex flex-wrap -m-2">
       
        
        <div class="p-2 w-full px-10">
          <div class="relative">
          <asp:Label ID="Label1" runat="server" Text="Product Name"  class="leading-7 text-xxl text-gray-600"></asp:Label><br />
            <asp:TextBox ID="txt_pname" runat="server" class="w-9/12 bg-white rounded border border-gray-500 focus:border-indigo-700 focus:ring-2 focus:ring-indigo-200 text-xl outline-none text-gray-700 py-1 px-4 leading-10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txt_pname" runat="server" ErrorMessage="Product name required" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
        </div>


         <div class="p-2 w-full px-10">
          <div class="relative">
          <asp:Label ID="Label2" runat="server" Text="Product Price"  class="leading-7 text-xxl text-gray-600"></asp:Label><br />
            <asp:TextBox ID="txt_price" runat="server" class="w-1/5 bg-white rounded border border-gray-500 focus:border-indigo-700 focus:ring-2 focus:ring-indigo-200 text-xl outline-none text-gray-700 py-1 px-4 leading-10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txt_price" runat="server" ErrorMessage="Price required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_price"
     ValidationExpression="^\d{0,5}(\.\d{1,4})?$"
    Display = "Dynamic" ErrorMessage = "Invalid Product Price" Font-Size="Small" ForeColor="Red" />

          </div>
        </div>


         <div class="p-2 w-full px-10">
          <div class="relative">
          <asp:Label ID="Label3" runat="server" Text="Selling Price"  class="leading-7 text-xxl text-gray-600"></asp:Label><br />
            <asp:TextBox ID="txt_sprice" runat="server" class="w-1/5 bg-white rounded border border-gray-500 focus:border-indigo-700 focus:ring-2 focus:ring-indigo-200 text-xl outline-none text-gray-700 py-1 px-4 leading-10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txt_sprice" runat="server" ErrorMessage="Selling Price name required" ForeColor="Red"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_sprice"
     ValidationExpression="^\d{0,5}(\.\d{1,4})?$"
    Display = "Dynamic" ErrorMessage = "Invalid Selling Price" Font-Size="Small" ForeColor="Red" />

          </div>
        </div>

                 <div class="p-2 w-full px-10">
          <div class="relative">
          <asp:Label ID="Label4" runat="server" Text="Brand"  class="leading-5 text-xxl text-gray-600"></asp:Label><br />
            <asp:DropDownList ID="ddlbrand" CssClass="form-control w-25" runat="server"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="ddlbrand" runat="server" ErrorMessage="Brand name required" ForeColor="Red"></asp:RequiredFieldValidator>

          </div>
        </div>


            <div class="p-2 w-full px-10">
          <div class="relative">
          <asp:Label ID="Label5" runat="server" Text="Category"  class="leading-7 text-xxl text-gray-600"></asp:Label><br />
            <asp:DropDownList ID="ddlcategory" CssClass="form-control w-25" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_cat_SelectIndexChanged"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="ddlcategory" runat="server" ErrorMessage="Category name required" ForeColor="Red"></asp:RequiredFieldValidator>
          
          </div>
        </div>


           <div class="p-2 w-full px-10">
          <div class="relative">
          <asp:Label ID="Label6" runat="server" Text="Sub-Category"  class="leading-7 text-xxl text-gray-600"></asp:Label><br />
            <asp:DropDownList ID="ddlsubcategory" CssClass="form-control w-25" runat="server"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="ddlsubcategory" runat="server" ErrorMessage="Sub Category name required" ForeColor="Red"></asp:RequiredFieldValidator>
          
          </div>
        </div>


         <div class="p-2 w-full px-10">
          <div class="relative">
          <asp:Label ID="Label15" runat="server" Text="Gender"  class="leading-7 text-xxl text-gray-600"></asp:Label><br />
            <asp:DropDownList ID="ddlgander" CssClass="form-control w-25" runat="server" 
                  AutoPostBack="True" OnSelectedIndexChanged="ddl_gender_SelectIndexChanged"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="ddlgander" runat="server" ErrorMessage="Gender name required" ForeColor="Red"></asp:RequiredFieldValidator>
          
          </div>
        </div>

        
           <div class="p-2 w-full px-10">
          <div class="relative">
          <asp:Label ID="Label7" runat="server" Text="Size"  class="leading-7 text-xxl text-gray-600"></asp:Label><br />
            <asp:CheckBoxList ID="cksize" class="control-label" runat="server" RepeatDirectiot="horizontal"></asp:CheckBoxList>
            
          </div>
        </div>


         <div class="p-2 w-full px-10">
          <div class="relative">
          <asp:Label ID="Label16" runat="server" Text="Quantity"  class="leading-7 text-xxl text-gray-600"></asp:Label><br />
            <asp:TextBox ID="txt_qty" runat="server" class="w-1/5 bg-white rounded border border-gray-500 focus:border-indigo-700 focus:ring-2 focus:ring-indigo-200 text-xl outline-none text-gray-700 py-1 px-4 leading-10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txt_qty" runat="server" ErrorMessage="Quantity required" ForeColor="Red"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_sprice"
     ValidationExpression="^[0-9]*$"
    Display = "Dynamic" ErrorMessage = "Invalid Quantity" Font-Size="Small" ForeColor="Red" />

          </div>
        </div>


           <div class="p-2 w-full px-10">
          <div class="relative">
          <asp:Label ID="Label8" runat="server" Text="Description"  class="leading-7 text-xxl text-gray-600"></asp:Label><br />
            <asp:TextBox ID="txt_desc" runat="server" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-500 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 h-32 text-base outline-none text-gray-700 py-1 px-3 resize-none leading-6 transition-colors duration-200 ease-in-out" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="txt_desc" runat="server" ErrorMessage="Product Description required" ForeColor="Red"></asp:RequiredFieldValidator>
          
          </div>
        </div>

        
            <div class="p-2 w-full px-10">
          <div class="relative">
          <asp:Label ID="Label9" runat="server" Text="Product Deatils"  class="leading-7 text-xxl text-gray-600"></asp:Label><br />
            <asp:TextBox ID="txt_details" runat="server" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-500 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 h-32 text-base outline-none text-gray-700 py-1 px-3 resize-none leading-6 transition-colors duration-200 ease-in-out" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="txt_details" runat="server" ErrorMessage="Product Details required" ForeColor="Red"></asp:RequiredFieldValidator>
          
          </div>
        </div>
        

        <div class="p-2 w-full px-10">
          <div class="relative">
          <asp:Label ID="Label10" runat="server" Text="Materials and Care"  class="leading-7 text-xxl text-gray-600"></asp:Label><br />
            <asp:TextBox ID="txt_care" runat="server" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-500 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 h-32 text-base outline-none text-gray-700 py-1 px-3 resize-none leading-6 transition-colors duration-200 ease-in-out" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="txt_care" runat="server" ErrorMessage="Materials and Care name required" ForeColor="Red"></asp:RequiredFieldValidator>
          
          </div>
        </div>


        <div class="p-2 w-full px-10">
          <div class="relative">
          <asp:Label ID="Label11" runat="server" Text="Upload Image"  class="leading-7 text-xxl text-gray-600"></asp:Label><br />
           <asp:FileUpload ID="fuimg01"  runat="server"></asp:FileUpload>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="fuimg01" runat="server" ErrorMessage="Product Image required" ForeColor="Red"></asp:RequiredFieldValidator>
          
          </div>
        </div>

            <div class="p-2 w-full px-10">
          <div class="relative">
          <asp:Label ID="Label12" runat="server" Text="Free Delivery"  class="leading-7 text-xxl text-gray-600"></asp:Label><br />
           <asp:CheckBox ID="chk_delivery" runat="server"></asp:CheckBox>
          </div>
        </div>

        <div class="p-2 w-full px-10">
          <div class="relative">
          <asp:Label ID="Label13" runat="server" Text="30 Days Return"  class="leading-7 text-xxl text-gray-600"></asp:Label><br />
           <asp:CheckBox ID="chk_return" runat="server"></asp:CheckBox>
          </div>
        </div>

         <div class="p-2 w-full px-10">
          <div class="relative">
          <asp:Label ID="Label14" runat="server" Text="COD"  class="leading-7 text-xxl text-gray-600"></asp:Label><br />
           <asp:CheckBox ID="chk_cod" runat="server"></asp:CheckBox>
          </div>
        </div>

        <div class="p-2 w-full">
        <asp:Button ID="btn_add" runat="server" Text="Add" 
                class="btn btn-primary btn-lg flex mx-auto text-white " onclick="btn_add_Click"></asp:Button>
         
        </div>
        
      </div>
    </div>
  </div>
</section>


</asp:Content>

