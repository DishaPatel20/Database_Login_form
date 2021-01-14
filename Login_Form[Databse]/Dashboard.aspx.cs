using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_Form_Databse_
{
    public partial class Dashborad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Write("Welcome To My Site " + Session["user"].ToString());
            }
            else {
                Response.Redirect("LOGIN.aspx");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            if(Session["user"] != null){
                Session["user"] = null;
                Response.Redirect("LOGIN.aspx");
            }
        }
    }
}