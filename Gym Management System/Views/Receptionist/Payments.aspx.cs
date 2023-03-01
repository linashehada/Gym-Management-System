using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_Management_System.Views.Receptionist
{
    public partial class Payments : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowPayments();
                GetMembers();
            }
        }

        private void ShowPayments()
        {
            string Query = "select * from FinanceTbl";
            PaymentsList.DataSource = Con.GetData(Query);
            PaymentsList.DataBind();

        }

        private void GetMembers()
        {
            string Query = "select * from MembersTbl";

            MemberName.DataTextField = Con.GetData(Query).Columns["MName"].ToString();
            MemberName.DataValueField = Con.GetData(Query).Columns["MId"].ToString();
            MemberName.DataSource = Con.GetData(Query);
            MemberName.DataBind();


        }
        
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = MemberName.SelectedValue.ToString();
                string PDate = PaymentDate.Value;
                string Period = PeriodDate.SelectedValue;
                string Agent = Signin.AgentId;
                string Amount = PAmount.Value;

                    
                string Query = "insert into FinanceTbl values('{0}','{1}','{2}','{3}','{4}')";
                Query = string.Format(Query,Agent,Name, Period,PDate,  Amount);
                Con.setData(Query);
                ShowPayments();
                ErrMsg.InnerText = "Payment Added!!";
                MemberName.SelectedValue.ToString();
                PaymentDate.Value="";
                PeriodDate.SelectedIndex=-1; 
                PAmount.Value="";

            }

            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = MemberName.SelectedValue.ToString();
                string PDate = PaymentDate.Value;
                string Period = PeriodDate.SelectedValue;
                string Agent = Signin.AgentId;
                string Amount = PAmount.Value;

                string Query = "update  FinanceTbl set MemberName='{0}',PaymentDate= '{1}',PeriodDate='{2}',MAddress='{3}',MMembership='{4}',MCoach='{5}',MPhone='{6}',MTiming='{7}',MStatus='{8}' where MId='{9}' ";
                Query = string.Format(Query, Agent, Name, PDate, Period, Amount, PaymentsList.SelectedRow.Cells[1].Text);
                Con.setData(Query);
                ShowPayments();
                ErrMsg.InnerText = "Payment Edited Successfully!!";
                MemberName.SelectedValue.ToString();
                PaymentDate.Value = "";
                PeriodDate.SelectedIndex = -1;
                PAmount.Value = "";


            }

            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}