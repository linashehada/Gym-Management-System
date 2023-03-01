<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Receptionist/ReceptionistMaster.Master" AutoEventWireup="true" CodeBehind="Members.aspx.cs" Inherits="Gym_Management_System.Views.Receptionist.Members" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <br />
    <div class="row" >
        <div class="col-md-8" >
        </div>
        
        <div class="col-md-2" >
            <asp:TextBox class="form-control" ID="MSearchTB" AutoComplete="off" placeholder=" Search a Member" runat="server" OnTextChanged="MSearchTB_TextChanged"></asp:TextBox>               
        </div>
        
        <div class="col-md-2" >
            <asp:Button class="btn btn-primary" ID="SearchBtn" Text="Search" runat="server" OnClick="SearchBtn_Click"/>
        </div>
    </div>
    <br /> 
    <h1 style="text-align:center;"> Manage Members Details</h1>
    <br />
    <div class="row gx-3 gy-2 align-items-center justify-content-center" >
        <div class="col-sm-3 "> 
            <asp:Label For="MName" class="form-label" runat="server">Member Name</asp:Label>
            <input type="text" class="form-control" id="MName" placeholder="Member Name" runat="server"><br />
            <asp:Label For="MAddress" class="form-label" runat="server">Home Address</asp:Label>
            <input type="text" class="form-control" id="MAddress" placeholder="Home Address" runat="server"> <br />  
            <asp:Label For="MCoach" class="form-label" runat="server">Coach Name</asp:Label>
            <asp:DropDownList class="form-control" ID="MCoach" runat="server">              
            
            </asp:DropDownList>                   
        </div>

        <div class="col-sm-3">
            <asp:Label For="MGender" class="form-label" runat="server">Gender</asp:Label>
            <asp:DropDownList class="form-control" ID="MGender" runat="server">
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label For="MPhone" class="form-label" runat="server">Phone Number</asp:Label>
            <input type="number" class="form-control" id="MPhone" placeholder="Phone Number" runat="server">
            <br />
            <asp:Label For="MStatus" class="form-label" runat="server">Status</asp:Label>
            <asp:DropDownList class="form-control" ID="MStatus" runat="server">             
                <asp:ListItem>Pending</asp:ListItem>
                <asp:ListItem>Canceld</asp:ListItem>
            </asp:DropDownList>                       
        </div>
       
        <div class="col-sm-3">
            <asp:Label For="MBirthday" class="form-label" runat="server">Birthday</asp:Label>
            <input type="date" class="form-control" id="MBirthday" placeholder="Birthday" runat="server">
            <br />
            <asp:Label For="MMembership" class="form-label" runat="server">Membership</asp:Label>
            <asp:DropDownList class="form-control" ID="MMembership" runat="server">
               
            </asp:DropDownList>
            <br />
            <asp:Label For="MTiming" class="form-label" runat="server">Timing</asp:Label>
            <asp:DropDownList class="form-control" ID="MTiming" runat="server">
                <asp:ListItem>06:00 AM - 08:00 AM</asp:ListItem>
                <asp:ListItem>08:00 AM - 10:00 AM</asp:ListItem>
                <asp:ListItem>10:00 AM - 12:00 PM</asp:ListItem>
                <asp:ListItem>06:00 PM - 08:00 PM</asp:ListItem>
                <asp:ListItem>08:00 PM - 10:00 PM</asp:ListItem>               
            </asp:DropDownList>
         </div>
     </div>      
     <br />
     <div class="row justify-content-center" >
         <label id="ErrMsg" runat="server" class=" text-danger"></label>
         <asp:Button class="btn  btn-warning text-white" runat="server" Text="Edit" Width="70px" Style="margin-left:20px;" ID="EditBtn" OnClick="EditBtn_Click"  />
         <asp:Button class="btn  btn-primary text-white" runat="server" Text="Add" Width="70px" Style="margin-left:20px;" OnClick="Add_Click" ID="AddBtn" />
         <asp:Button class="btn  btn-danger text-white" runat="server"  Text="Delete"  Width="70px" Style="margin-left:20px;" ID="DeleteBtn" OnClick="DeleteBtn_Click"  />
     </div>
     <br />
     <br />
     <div class="col-mid-9" style="margin-right:50px;margin-left:50px;">
        <asp:GridView class="table thead-darktable-hover" id="MembersList" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="MembersList_SelectedIndexChanged">
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
