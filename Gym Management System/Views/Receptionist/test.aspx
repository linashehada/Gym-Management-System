<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Receptionist/ReceptionistMaster.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Gym_Management_System.Views.Receptionist.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
     <div class="row gx-3 gy-2 align-items-center justify-content-center" >
        <div class="col-sm-3 "> 
            <input type="text" class="form-control" id="MName" placeholder="Member Name" runat="server"><br />
            <input type="text" class="form-control" id="MAddress" placeholder="Home Address" runat="server"> <br />    
            <asp:DropDownList class="form-control" ID="MCoach" runat="server">              
            
            </asp:DropDownList>                   
        </div>

        <div class="col-sm-3">
            <asp:DropDownList class="form-control" ID="MGender" runat="server">
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
            </asp:DropDownList>
            <br />
            <input type="text" class="form-control" id="MPhone" placeholder="Phone Number" runat="server">
            <br />
            <asp:DropDownList class="form-control" ID="MStatus" runat="server">
                <asp:ListItem>Select Status</asp:ListItem>
                <asp:ListItem>Pending</asp:ListItem>
                <asp:ListItem>Canceld</asp:ListItem>
            </asp:DropDownList>                       
        </div>
       
        <div class="col-sm-3">
            <input type="date" class="form-control" id="MBirthday" placeholder="Birthday" runat="server">
            <br />
            <asp:DropDownList class="form-control" ID="MMembership" runat="server">
               
            </asp:DropDownList>
            <br />
            <asp:DropDownList class="form-control" ID="MTiming" runat="server">
                <asp:ListItem>Select Time</asp:ListItem>
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
         <asp:Button class="btn  btn-warning text-white" runat="server" Text="Edit" Width="70px" Style="margin-left:20px;" ID="EditBtn"    />
         <asp:Button class="btn  btn-primary text-white" runat="server" Text="Add" Width="70px" Style="margin-left:20px;"  ID="AddBtn" />
         <asp:Button class="btn  btn-danger text-white" runat="server"  Text="Delete"  Width="70px" Style="margin-left:20px;" ID="DeleteBtn"    />
     </div>
     <br />
     <br />
     <div class="col-mid-9" style="margin-right:50px;margin-left:50px;">
         <asp:GridView class="table thead-darktable-hover" id="MembersList" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"    >
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
