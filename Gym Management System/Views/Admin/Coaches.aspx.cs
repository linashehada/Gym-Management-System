using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_Management_System.Views.Admin
{ 
    public partial class Coaches : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowCoaches();
            }
        }

        private void ShowCoaches()
        {
            string Query = "select * from CoachTbl";
            CoachList.DataSource = Con.GetData(Query);
            CoachList.DataBind();

        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = CName.Value;
                string Gender = CGender.SelectedValue;
                string Birthday = CBirthday.Value;
                string Phone = CPhone.Value;
                string Email = CEmail.Value;
                string Password = CPassword.Value;

                if( Name=="" || Phone == "" || Email=="" || Password=="")
                {
                    ErrMsg.InnerText = "Please Fill All Fields";
                }
                else if (Password.Length<8)
                {
                    ErrMsg.InnerText = "Please Enter an 8-digits password";
                }
                else
                {
                    string Query = "insert into CoachTbl values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = string.Format(Query, Name, Gender, Birthday, Phone, Email, Password);

                    Con.setData(Query);
                    ShowCoaches();
                    ErrMsg.InnerText = "Coach Added!!";
                    CName.Value = "";
                    CGender.SelectedIndex = -1;
                    CBirthday.Value = "";
                    CPhone.Value = "";
                    CEmail.Value = "";
                    CPassword.Value = "";


                }
                

            }

            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }


        protected void CoachList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CName.Value = CoachList.SelectedRow.Cells[2].Text;
            CGender.Text = CoachList.SelectedRow.Cells[3].Text;
            CBirthday.Value = CoachList.SelectedRow.Cells[4].Text;
            CPhone.Value = CoachList.SelectedRow.Cells[5].Text;
            CEmail.Value = CoachList.SelectedRow.Cells[6].Text;
            CPassword.Value = CoachList.SelectedRow.Cells[7].Text;
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = CName.Value;
                string Gender = CGender.SelectedValue;
                string Birthday = CBirthday.Value;
                string Phone = CPhone.Value;
                string Email = CEmail.Value;
                string Password = CPassword.Value;
                string Query = "update CoachTbl  set CName='{0}', CGender='{1}',CBirthday='{2}',CPhone='{3}',CEmail='{4}',CPassword='{5}' where CId='{6}'";
                Query = string.Format(Query, Name, Gender, Birthday, Phone, Email, Password, CoachList.SelectedRow.Cells[1].Text);
                Con.setData(Query);
                ShowCoaches();
                ErrMsg.InnerText = "Coach Edited Successfully!!";
                CName.Value = "";
                CGender.SelectedIndex = -1;
                CBirthday.Value = "";
                CPhone.Value = "";
                CEmail.Value = "";
                CPassword.Value = "";
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

                string Query = "delete from CoachTbl where CId='{0}'";
                Query = string.Format(Query, CoachList.SelectedRow.Cells[1].Text);
                Con.setData(Query);
                ShowCoaches();
                ErrMsg.InnerText = "Coach Deleted Successfully!!";
                CName.Value = "";
                CGender.SelectedIndex = -1;
                CBirthday.Value = "";
                CPhone.Value = "";
                CEmail.Value = "";
                CPassword.Value = "";
            }

            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}