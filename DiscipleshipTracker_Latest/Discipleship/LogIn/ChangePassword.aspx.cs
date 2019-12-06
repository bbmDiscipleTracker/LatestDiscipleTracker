using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Chilli_Systems_Case_Management_Systems.Log_In
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSaveChangePW_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Users where Persal_No = @Persal_No and Password = @Password", con);
            cmd.Parameters.AddWithValue("@Persal_No", txtPersalNo.Text);
            cmd.Parameters.AddWithValue("@Password", txtCurrentPassword.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                string type = (dt.Rows[0]["Designation"].ToString().Trim());
                //Store your designation row cell in a variable to check condition
                if (type == "Police Officer")
                {

                    SqlConnection conChangePW = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    SqlCommand objcmd = new SqlCommand("Update Users set Password ='" + txtNewPassword.Text + "'" + "where Persal_No='" + txtPersalNo.Text + "'", conChangePW);

                    conChangePW.Open();
                    objcmd.ExecuteNonQuery();
                    conChangePW.Close();

                    lblCangePassword.Text = "";
                    lblPasswordSuccSaved.Text = "Your password has been successfully changed.";

                }
                if (type == "Detective")
                {

                    SqlConnection conChangePW = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    SqlCommand objcmd = new SqlCommand("Update Users set Password ='" + txtNewPassword.Text + "'" + "where Persal_No='" + txtPersalNo.Text + "'", conChangePW);

                    conChangePW.Open();
                    objcmd.ExecuteNonQuery();
                    conChangePW.Close();

                    lblCangePassword.Text = "";
                    lblPasswordSuccSaved.Text = "Your password has been successfully changed.";

                }
                if (type == "Head of Detectives")
                {

                    SqlConnection conChangePW = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    SqlCommand objcmd = new SqlCommand("Update Users set Password ='" + txtNewPassword.Text + "'" + "where Persal_No='" + txtPersalNo.Text + "'", conChangePW);

                    conChangePW.Open();
                    objcmd.ExecuteNonQuery();
                    conChangePW.Close();

                    lblCangePassword.Text = "";
                    lblPasswordSuccSaved.Text = "Your password has been successfully changed.";

                }
                if (type == "Admin")
                {

                    SqlConnection conChangePW = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    SqlCommand objcmd = new SqlCommand("Update Users set Password ='" + txtNewPassword.Text + "'" + "where Persal_No='" + txtPersalNo.Text + "'", conChangePW);

                    conChangePW.Open();
                    objcmd.ExecuteNonQuery();
                    conChangePW.Close();

                    lblCangePassword.Text = "";
                    lblPasswordSuccSaved.Text = "Your password has been successfully changed.";

                }
                
            }

            else
            {
                lblCangePassword.Text = "The Username or Existing Password is incorrect";
            }

            txtConfirmPassword.Text = "";
            txtCurrentPassword.Text = "";
            txtNewPassword.Text = "";
            Response.Redirect("~/Log In/PasswordFeedback.aspx");
        }

        protected void btnBackLogin_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancelPW_Click(object sender, EventArgs e)
        {

        }
    }
}