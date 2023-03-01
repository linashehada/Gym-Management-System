<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Coaches.aspx.cs" Inherits="Gym_Management_System.Views.Admin.Coaches" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <br />
    <h1 style="text-align:center;"> Manage Coaches Details</h1><br />
    <div class="row gx-3 gy-2 align-items-center justify-content-center" >
       <div class="col-sm-3 ">         
         <input type="text" class="form-control" id="CName" placeholder="Coach Name" runat="server">   <br />     
         <input type="number" class="form-control" id="CPhone" placeholder="Phone Number" runat="server">          
       </div>

       <div class="col-sm-3">
           <asp:DropDownList class="form-control" ID="CGender" runat="server">
               <asp:ListItem>Female</asp:ListItem>
               <asp:ListItem>Male</asp:ListItem>
           </asp:DropDownList>
          <br />
           <input type="email" class="form-control" id="CEmail" placeholder="Email" runat="server">                  
       </div>
       
        <div class="col-sm-3">
           <input type="date" class="form-control" id="CBirthday" placeholder="Coach Birthday" runat="server">
           <br />
            <input type="password" class="form-control" id="CPassword" placeholder="Password" runat="server" visible="True"> 
       </div>
       
    </div>
    <br />
    <div class="row justify-content-center" >
        <label id="ErrMsg" runat="server" class=" text-danger"></label>
         <asp:Button  class="btn  btn-warning text-white" runat="server" Text="Edit" Width="70px" Style="margin-left:20px;" ID="EditBtn" OnClick="EditBtn_Click"  />
         <asp:Button class="btn  btn-primary text-white" runat="server" Text="Add" Width="70px" Style="margin-left:20px;" ID="AddBtn" OnClick="AddBtn_Click" />
         <asp:Button class="btn  btn-danger text-white" runat="server"  Text="Delete"  Width="70px" Style="margin-left:20px;" ID="DeleteBtn" OnClick="DeleteBtn_Click" />
    </div>
    <br />
    <div class="col-mid-9" style="margin-right:50px;margin-left:50px;">
        <asp:GridView class="table thead-darktable-hover" id="CoachList" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CoachList_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#ffc107" Font-Bold="True" ForeColor="Black"  />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#faf5e6" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>    
</asp:Content>
