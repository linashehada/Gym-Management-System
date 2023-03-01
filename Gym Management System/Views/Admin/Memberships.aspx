<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Memberships.aspx.cs" Inherits="Gym_Management_System.Views.Admin.Memberships" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
     <br />
    <h1 style="text-align:center;"> Manage Memberships Details</h1><br />
    <div class="row gx-3 gy-2 align-items-center justify-content-center" >
       <div class="col-sm-3 ">   
           <asp:Label For="MName" class="form-label" runat="server">Name</asp:Label>
         <input type="text" class="form-control" id="MName" placeholder="Membership Name" runat="server">   <br />  
           <asp:Label For="MGoal" class="form-label" runat="server">Membership Goal</asp:Label>
         <input type="text" class="form-control" id="MGoal" placeholder="Membership Goal" runat="server">          
       </div>

       <div class="col-sm-3">
           <asp:Label For="MType" class="form-label" runat="server">Type</asp:Label>
           <asp:DropDownList class="form-control" ID="MType" runat="server">
               <asp:ListItem>Gold</asp:ListItem>
               <asp:ListItem>Silver</asp:ListItem>
           </asp:DropDownList>
          <br />
           <asp:Label For="MDuration" class="form-label" runat="server">Duration</asp:Label>
           <input type="number" class="form-control" id="MDuration" placeholder="Membership Duration in Days" runat="server">                  
       </div>
       
        <div class="col-sm-3">
            <asp:Label For="MCost" class="form-label" runat="server">Membership Cost</asp:Label>
           <input type="number" class="form-control" id="MCost" placeholder="Membership Cost" runat="server">
           <br />
            <asp:Label For="MLeader" class="form-label" runat="server">Membership Leader</asp:Label>
            <input type="text" class="form-control" id="MLeader" placeholder="Membership Leader" runat="server"> 
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
        <asp:GridView class="table thead-darktable-hover" id="MembershipList" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="MembershipList_SelectedIndexChanged">
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
