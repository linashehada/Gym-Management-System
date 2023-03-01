using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_Management_System.Views
{
    public partial class Signin : System.Web.UI.Page
    {
        Models.Functions Con;
        public static string AgentId = "";
        public static string AgentName = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions(); 
        }

        protected void SigninBtn_Click(object sender, EventArgs e)
        {
            
            if (Admin_radio.Checked==true)
            {
                if (Email.Value == "linashehada3@gmail.com" && Password.Value == "lina")
                {
                    Response.Redirect("Admin/Coaches.aspx");
                }
                else
                {
                    ErrMsg.InnerText = "Invalid Admin Credentials!!";
                }
            }
            else
            {
                try
                {
                    string Query = "select RId,REmail,RPassword from ReceptionistTbl where REmail='{0}' and RPassword='{1}'";
                    Query = string.Format(Query, Email.Value, Password.Value);
                    DataTable dt = Con.GetData(Query);
                    if (dt.Rows.Count == 0)
                    {
                        ErrMsg.InnerText = "Invalid Receptionist  Credentials!!";

                    }
                    else
                    {
                        AgentId = dt.Rows[0][0].ToString();
                        AgentName = dt.Rows[0][1].ToString();
                        Response.Redirect("Receptionist/Payments.aspx");
                    }

                }
                catch (Exception Ex)
                {
                    ErrMsg.InnerText = Ex.Message;
                }

            }

        }
    }
}