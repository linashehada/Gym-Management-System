using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_Management_System.Views.Admin
{
    public partial class Memberships : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowMembership();
            }

        }

        private void ShowMembership()
        {
            string Query = "select * from MembershipTbl";
            MembershipList.DataSource = Con.GetData(Query);
            MembershipList.DataBind();

        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = MName.Value;
                string Type = MType.SelectedValue;
                string Cost = MCost.Value;
                string Goal = MGoal.Value;
                string Duration = MDuration.Value;
                string Leader = MLeader.Value;

                if (Name == "" || Cost == "" || Goal == "" || Leader == "")
                {
                    ErrMsg.InnerText = "Please Fill All Fields";
                }
                else
                {
                    string Query = "insert into MembershipTbl values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = string.Format(Query, Name, Type, Cost, Goal, Duration, Leader);
                    Con.setData(Query);
                    ShowMembership();
                    ErrMsg.InnerText = "Membership Added!!";
                    MName.Value = "";
                    MType.SelectedIndex = -1;
                    MCost.Value = "";
                    MGoal.Value = "";
                    MDuration.Value = "";
                    MLeader.Value = "";
                }

            }
                    

            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void MembershipList_SelectedIndexChanged(object sender, EventArgs e)
        {
            MName.Value = MembershipList.SelectedRow.Cells[2].Text;
            MType.Text = MembershipList.SelectedRow.Cells[3].Text; ;
            MCost.Value = MembershipList.SelectedRow.Cells[4].Text;
            MGoal.Value = MembershipList.SelectedRow.Cells[5].Text;
            MDuration.Value = MembershipList.SelectedRow.Cells[6].Text;
            MLeader.Value = MembershipList.SelectedRow.Cells[7].Text;
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = MName.Value;
                string Type = MType.SelectedValue;
                string Cost = MCost.Value;
                string Goal = MGoal.Value;
                string Duration = MDuration.Value;
                string Leader = MLeader.Value;

                string Query = "update MembershipTbl  set MName='{0}', MType='{1}',MCost='{2}', MGoal='{3}',MDuration='{4}', MLeader='{5}' where MShip='{6}'";
                Query = string.Format(Query, Name, Type, Cost, Goal, Duration, Leader, MembershipList.SelectedRow.Cells[1].Text);
                Con.setData(Query);
                ShowMembership();
                ErrMsg.InnerText = "Membership Edited Successfully!!";
                MName.Value = "";
                MType.SelectedIndex = -1;
                MCost.Value = "";
                MGoal.Value = "";
                MDuration.Value = "";
                MLeader.Value = "";
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

                string Query = "Delete from MembershipTbl  where  MShip='{0}'";
                Query = string.Format(Query, MembershipList.SelectedRow.Cells[1].Text);
                Con.setData(Query);
                ShowMembership();
                ErrMsg.InnerText = "Membership Deleted Successfully!!";
                MName.Value = "";
                MType.SelectedIndex = -1;
                MCost.Value = "";
                MGoal.Value = "";
                MDuration.Value = "";
                MLeader.Value = "";
            }

            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }







    }
}