using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chilli_Systems_Case_Management_Systems.Log_In
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Persal"] = txtUsername.Text;
        }
        protected void btnLogIn_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Users where Persal_No = @Persal_No and Password = @Password", con);
            cmd.Parameters.AddWithValue("@Persal_No", txtUsername.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                string type = (dt.Rows[0]["Designation"].ToString().Trim());
                //Store your designation row cell in a variable to check condition
                if (type == "Police Officer")
                {
                    Response.Redirect("~/Police Officer/AddComplainant.aspx");
                }
                if (type == "Detective")
                {
                    Response.Redirect("~/Detective/ViewAssignedCases.aspx");
                }
                if (type == "Head Of Detectives")
                {
                    Response.Redirect("~/Head Of Detectives/ViewCaseOpened.aspx");
                }
                if (type == "Admin")
                {
                    Response.Redirect("~/Admin/AddUsers.aspx");
                }
                else
                {
                    lblMessage.Text = "User does not exist";
                }
            }
        
                else
            {
                lblMessage.Text = "The Username or Password is incorrect";
            }
            
        }
    }
}