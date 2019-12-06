using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Discipleship.SignIn
{
    public partial class signIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["username"] = txtUserName.Text;
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Users where Username = @Username and Password = @Password", con);
            cmd.Parameters.AddWithValue("@Username", txtUserName.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                string type = (dt.Rows[0]["Designation"].ToString().Trim());
                //Store your designation row cell in a variable to check condition
                if (type == "Discipler")
                {
                    Response.Redirect("~/Discipler/mydisciples.aspx");
                    Session["username"] = txtUserName.Text;
                }

                if (type == "Pastor")
                {
                    Response.Redirect("~/Pastor/newdisciple.aspx");
                    Session["username"] = txtUserName.Text;
                }

                if (type == "Bishop")
                {
                    Response.Redirect("~/Bishop/discipleshipsummary.aspx");
                    Session["username"] = txtUserName.Text;
                }
                if (type == "Admin")
                {
                    Response.Redirect("~/Admin/AddUsers.aspx");
                    Session["username"] = txtUserName.Text;
                }

                else
                {
                    lblMessage.Text = "User does not exist";
                }
            }

            else
            {
                lblMessage.Text = "The Username or Password is Incorrect";
            }
        }
    }
}