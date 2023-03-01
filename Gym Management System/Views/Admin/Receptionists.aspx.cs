using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Gym_Management_System.Views.Admin
{
    public partial class Receptionists : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowReceptionist();
            }
        }

        private void ShowReceptionist()
        {
            string Query = "select * from ReceptionistTbl";
            ReceptionistList.DataSource = Con.GetData(Query);
            ReceptionistList.DataBind();

        }

        protected void Add_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = RName.Value;
                string Gender = RGender.SelectedValue;
                string Birthday = RBirthday.Value;
                string Phone = RPhone.Value;
                string Email = REmail.Value;
                string Password = RPassword.Value;

                if (Name == "" || Phone == "" || Email == "" || Password == "")
                {
                    ErrMsg.InnerText = "Please Fill All Fields";
                }
                else
                {
                    string Query = "insert into ReceptionistTbl  values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = string.Format(Query, Name, Gender, Birthday, Phone, Email, Password);
                    Con.setData(Query);
                    ShowReceptionist();
                    ErrMsg.InnerText = "Receptionist Added!!";
                    RName.Value = "";
                    RGender.SelectedIndex = -1;
                    RBirthday.Value = "";
                    RPhone.Value = "";
                    REmail.Value = "";
                    RPassword.Value = "";

                }
                    
            }

            catch(Exception Ex)
            {
                ErrMsg.InnerText=Ex.Message;
            }
        }

        protected void ReceptionistList_SelectedIndexChanged(object sender, EventArgs e)
        {
            RName.Value = ReceptionistList.SelectedRow.Cells[2].Text;
            RGender.Text = ReceptionistList.SelectedRow.Cells[3].Text;
            RBirthday.Value = ReceptionistList.SelectedRow.Cells[4].Text;
            RPhone.Value = ReceptionistList.SelectedRow.Cells[5].Text;
            REmail.Value = ReceptionistList.SelectedRow.Cells[6].Text;
            RPassword.Value = ReceptionistList.SelectedRow.Cells[7].Text;
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = RName.Value;
                string Gender = RGender.SelectedValue;
                string Birthday = RBirthday.Value;
                string Phone = RPhone.Value;
                string Email = REmail.Value;
                string Password = RPassword.Value;
                string Query = "update ReceptionistTbl  set RName='{0}', RGender='{1}',RBirthday='{2}',RPhone='{3}',REmail='{4}',RPassword='{5}' where RId='{6}'";
                Query = string.Format(Query, Name, Gender, Birthday, Phone, Email, Password, ReceptionistList.SelectedRow.Cells[1].Text);
                Con.setData(Query);
                ShowReceptionist();
                ErrMsg.InnerText = "Receptionist Edited Successfully!!";
                RName.Value="";
                RGender.SelectedIndex=-1;
                RBirthday.Value="";
                RPhone.Value="";
                REmail.Value="";
                RPassword.Value="";
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
                
                string Query = "delete from ReceptionistTbl where RId='{0}'";
                Query = string.Format(Query,  ReceptionistList.SelectedRow.Cells[1].Text);
                Con.setData(Query);
                ShowReceptionist();
                ErrMsg.InnerText = "Receptionist Deleted Successfully!!";
                RName.Value = "";
                RGender.SelectedIndex = -1;
                RBirthday.Value = "";
                RPhone.Value = "";
                REmail.Value = "";
                RPassword.Value = "";
            }

            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }


        }
    }
}