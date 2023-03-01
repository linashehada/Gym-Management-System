using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Gym_Management_System.Views.Receptionist
{
    public partial class Members : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowCoaches();
                GetCoaches();
                GetMemberships();
            }

        }

        private void GetCoaches()
        {
            string Query = "select * from CoachTbl";
         
            MCoach.DataTextField = Con.GetData(Query).Columns["CName"].ToString();
            MCoach.DataValueField = Con.GetData(Query).Columns["CId"].ToString();
            MCoach.DataSource = Con.GetData(Query);
            MCoach.DataBind();
            

        }

        private void ShowMembers()
        {
            string Query = "select * from MembersTbl";
            MembersList.DataSource = Con.GetData(Query);
            MembersList.DataBind();

        }

        private void GetMemberships()
        {
            string Query = "select * from MembershipTbl";

            MMembership.DataTextField = Con.GetData(Query).Columns["MName"].ToString();
            MMembership.DataValueField = Con.GetData(Query).Columns["MShip"].ToString();
            MMembership.DataSource = Con.GetData(Query);
            MMembership.DataBind();


        }
        private void ShowCoaches()
        {
            string Query = "select * from MembersTbl";
            MembersList.DataSource = Con.GetData(Query);
            MembersList.DataBind();

        }
        protected void Add_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = MName.Value;
                string Gender = MGender.SelectedValue;
                string Birthday = MBirthday.Value;
                string Address = MAddress.Value;
                string Membership = MMembership.SelectedValue;
                string Coach = MCoach.SelectedValue;
                string Phone = MPhone.Value;
                string Timing = MTiming.SelectedValue;
                string Status = MStatus.SelectedValue;
                if (Name == "" || Phone == "" || Address == "")
                {
                    ErrMsg.InnerText = "Please Fill All Fields";
                }
                else
                {
                    string Query = "insert into MembersTbl values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')";
                    Query = string.Format(Query, Name, Gender, Birthday, Address, Membership, Coach, Phone, Timing, Status);
                    Con.setData(Query);
                    ShowMembers();
                    ErrMsg.InnerText = "Member Added!!";

                    MName.Value = "";
                    MBirthday.Value = "";
                    MAddress.Value = "";
                    MPhone.Value = "";

                }
             
            }

            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }

        protected void MembersList_SelectedIndexChanged(object sender, EventArgs e)
        {
            MName.Value = MembersList.SelectedRow.Cells[2].Text;
            MGender.Text = MembersList.SelectedRow.Cells[3].Text;
            MBirthday.Value = MembersList.SelectedRow.Cells[4].Text;
            MAddress.Value = MembersList.SelectedRow.Cells[5].Text;
            MMembership.SelectedValue = MembersList.SelectedRow.Cells[6].Text;
            MCoach.SelectedValue = MembersList.SelectedRow.Cells[7].Text;
            MPhone.Value = MembersList.SelectedRow.Cells[8].Text;
            MTiming.Text = MembersList.SelectedRow.Cells[9].Text;
            MStatus.Text = MembersList.SelectedRow.Cells[10].Text;
           
        }


        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = MName.Value;
                string Gender = MGender.SelectedValue;
                string Birthday = MBirthday.Value;
                string Address = MAddress.Value;
                string Membership = MMembership.SelectedValue;
                string Coach = MCoach.SelectedValue;
                string Phone = MPhone.Value;
                string Timing = MTiming.SelectedValue;
                string Status = MStatus.SelectedValue;

                string Query = "update  MembersTbl set MName='{0}',MGender= '{1}',MBirthday='{2}',MAddress='{3}',MMembership='{4}',MCoach='{5}',MPhone='{6}',MTiming='{7}',MStatus='{8}' where MId='{9}' ";
                Query = string.Format(Query, Name, Gender, Birthday, Address, Membership, Coach, Phone, Timing, Status, MembersList.SelectedRow.Cells[1].Text);
                Con.setData(Query);
                ShowCoaches();
                ErrMsg.InnerText = "Member Edited!!";
                MName.Value = "";
                MGender.SelectedIndex = -1;
                MBirthday.Value = "";
                MAddress.Value = "";                
                MMembership.SelectedIndex = -1;
                MCoach.SelectedIndex = -1;
                MPhone.Value = "";
                MTiming.SelectedIndex = -1;
                MStatus.SelectedIndex = -1;


            }

            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {

                string Query = "delete from MembersTbl where MId='{0}'";
                Query = string.Format(Query, MembersList.SelectedRow.Cells[1].Text);
                Con.setData(Query);
                ShowCoaches();
                ErrMsg.InnerText = "Member Deleted Successfully!!";
                MName.Value = "";
                MGender.SelectedIndex = -1;
                MBirthday.Value = "";
                MAddress.Value = "";
                MMembership.SelectedIndex = -1;
                MCoach.SelectedIndex = -1;
                MPhone.Value = "";
                MTiming.SelectedIndex = -1;
                MStatus.SelectedIndex = -1;
            }

            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        private void SearchMember()
        {
            string Query = "select * from MembersTbl where MName like % '{0}' %";
            Query = string.Format(Query, MSearchTB.Text);
            MembersList.DataSource = Con.GetData(Query);
            MembersList.DataBind();

        }

        
        protected void MSearchTB_TextChanged(object sender, EventArgs e)
        {
            SearchMember();

            ErrMsg.InnerText = MSearchTB.Text;

        }
        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            ShowMembers();
            //ErrMsg.InnerText = "linaj";
           // ErrMsg.InnerText = MSearchTB.Text;
        }
    }
}