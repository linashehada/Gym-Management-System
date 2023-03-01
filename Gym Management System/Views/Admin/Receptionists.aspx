<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Receptionists.aspx.cs" Inherits="Gym_Management_System.Views.Admin.Receptionists" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <br />
    <h1 style="text-align:center;"> Manage Receptionists Details</h1><br />
    <div class="row gx-3 gy-2 align-items-center justify-content-center" >
       <div class="col-sm-3 ">  
           <asp:Label For="RName" class="form-label" runat="server">Receptionist Name</asp:Label>
         <input type="text" class="form-control" id="RName" placeholder="Receptionist Name" runat="server">   <br />
           <asp:Label For="RPhone" class="form-label" runat="server">Phone Number</asp:Label>
         <input type="number" class="form-control" id="RPhone" placeholder="Phone Number" runat="server">          
       </div>

       <div class="col-sm-3">
           <asp:Label For="RGender" class="form-label" runat="server">Gender</asp:Label>
           <asp:DropDownList class="form-control" ID="RGender" runat="server">
               <asp:ListItem>Female</asp:ListItem>
               <asp:ListItem>Male</asp:ListItem>
           </asp:DropDownList>
          <br />
           <asp:Label For="REmail" class="form-label" runat="server">Email</asp:Label>
           <input type="email" class="form-control" id="REmail" placeholder="Email" runat="server">                  
       </div>
       
        <div class="col-sm-3">
            <asp:Label For="RBirthday" class="form-label" runat="server">Birthday</asp:Label>
           <input type="date" class="form-control" id="RBirthday" placeholder="Receptionist Birthday" runat="server">
           <br />
            <asp:Label For="RPassword" class="form-label" runat="server">Password</asp:Label>
            <input type="password" class="form-control" id="RPassword" placeholder="Password" runat="server"> 
       </div>
       
    </div>
    <br />
    <div class="row justify-content-center" >
        <label id="ErrMsg" runat="server" class=" text-danger"></label>
         <asp:Button  class="btn  btn-warning text-white" runat="server" Text="Edit" Width="70px" Style="margin-left:20px;" ID="EditBtn" OnClick="EditBtn_Click"  />
         <asp:Button class="btn  btn-primary text-white" runat="server" Text="Add" Width="70px" Style="margin-left:20px;" OnClick="Add_Click" ID="AddBtn" />
         <asp:Button class="btn  btn-danger text-white" runat="server"  Text="Delete"  Width="70px" Style="margin-left:20px;" ID="DeleteBtn" OnClick="DeleteBtn_Click" />
    </div>
    <br />
    <div class="col-mid-9" style="margin-right:50px;margin-left:50px;">
        <asp:GridView class="table thead-darktable-hover" id="ReceptionistList" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="ReceptionistList_SelectedIndexChanged">
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
