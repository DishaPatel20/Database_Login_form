using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Login_Form_Databse_
{
    public partial class LOGIN : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from login where username = @user and password = @pass";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.Parameters.AddWithValue("@user",txtUname.Text);
            cmd.Parameters.AddWithValue("@pass", txtPwd.Text);
            con.Open();
           SqlDataReader dr =  cmd.ExecuteReader();
           if (dr.HasRows)
           {
               Session["user"] = txtUname.Text;
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Successfully :) ')</script>");
               Response.Redirect("Dashboard.aspx");
           }
           else
           {
               Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed :(  ')</script>");
           }
            con.Close();
        }
    }
}