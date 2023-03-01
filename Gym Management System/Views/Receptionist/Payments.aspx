<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Receptionist/ReceptionistMaster.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="Gym_Management_System.Views.Receptionist.Payments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <br />
    <h1 style="text-align:center;"> Manage Payments Details</h1><br />
    <div class="row gx-3 gy-2 align-items-center justify-content-center" >
        <div class="col-sm-4 ">   
            <asp:Label For="MemberName" class="form-label" runat="server"> Member Name</asp:Label>
            <asp:DropDownList class="form-control" ID="MemberName" runat="server">
             
           </asp:DropDownList>
            <br /> 
            <asp:Label For="PeriodDate" class="form-label" runat="server">Period Date</asp:Label>
            <asp:DropDownList class="form-control" ID="PeriodDate" runat="server">
               <asp:ListItem>1 Month</asp:ListItem>
               <asp:ListItem>3 Months</asp:ListItem>
               <asp:ListItem>6 Months</asp:ListItem>
               <asp:ListItem>9 Months</asp:ListItem>
               <asp:ListItem>12 Months</asp:ListItem>
           </asp:DropDownList>
         </div>
       
         <div class="col-sm-4">
             <asp:Label For="PaymentDate" class="form-label" runat="server">Payment Date</asp:Label>
             <input type="date" class="form-control" id="PaymentDate" runat="server">
             <br />
             <asp:Label For="PAmount" class="form-label" runat="server"> Amount</asp:Label>
             <input type="number" class="form-control" id="PAmount"  runat="server"> 
         </div>
       
    </div>
    <br />
    <div class="row justify-content-center" >
        <label id="ErrMsg" runat="server" class=" text-danger"></label>     
         <asp:Button class="btn  btn-primary text-white" runat="server" Text="Add" Width="70px" Style="margin-left:20px;" ID="AddBtn" OnClick="AddBtn_Click" />      
    </div>
    <br />
    <div class="col-mid-9" style="margin-right:50px;margin-left:50px;">
        <asp:GridView class="table thead-darktable-hover" id="PaymentsList" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" >
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
