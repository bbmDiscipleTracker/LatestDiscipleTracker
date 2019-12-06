using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Discipleship.Discipler
{
    public partial class updatedisciple : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String userName = Session["username"].ToString();
            lblUser.Text = userName.ToString();

            String DiscipleID = Session["DiscipleID"].ToString();
            lblDiscipleID.Text = DiscipleID.ToString();

            if (!Page.IsPostBack)
            {
                PopulateFields();
            }

            string Completed = "Completed".ToString();
            string Inprogress = "In Progress".ToString();


            if (lblAssurance.Text == Completed.ToString() 
                && lblBible.Text == Completed.ToString() 
                && lblBaptisim.Text == Completed.ToString()
                && lblBlood.Text == Completed.ToString()
                && lblCallOfGod.Text == Completed.ToString()
                && lblCross.Text == Completed.ToString()
                && lblFaith.Text == Completed.ToString()
                && lblFellowship.Text == Completed.ToString()
                && lblGenerosity.Text == Completed.ToString()
                && lblGod.Text == Completed.ToString()
                && lblHolySpirit.Text == Completed.ToString()
                && lblJesus.Text == Completed.ToString()
                && lblKingdom.Text == Completed.ToString()
                && lblManSatan.Text == Completed.ToString()
                && lblMembership.Text == Completed.ToString()
                && lblPrayer.Text == Completed.ToString()
                && lblRepentance.Text == Completed.ToString()
                && lblResurrection.Text ==  Completed.ToString()
                && lblTempation.Text == Completed.ToString())
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand objcmd = new SqlCommand("Update Disciple set Overall_Status= '" + Completed + "'"
               

                    + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


                con.Open();
                objcmd.ExecuteNonQuery();
                con.Close();
                //Response.Redirect("~/Discipler/successful.aspx");
            }

            else
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand objcmd = new SqlCommand("Update Disciple set Overall_Status= '" + Inprogress.ToString() + "'"


                     + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);

                con.Open();
                objcmd.ExecuteNonQuery();
                con.Close();
            }
        }

        protected void btnAssurance_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 1;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);
        }

        protected void btnBible_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 2;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);

        }

        protected void btnGod_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 3;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);

        }

        protected void btnManSatan_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 4;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);

        }

        protected void btnJesus_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 5;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);

        }

        protected void btnCross_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 6;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);

        }

        protected void btnBlood_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 7;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);

        }

        protected void btnResurrection_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 8;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);

        }

        protected void btnRepentance_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 9;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);

        }

        protected void btnFaith_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 10;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);

        }

        protected void btnHolySpirit_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 11;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);

        }

        protected void btnTemptation_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 12;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);

        }

        protected void btnFellowship_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 13;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);

        }

        protected void btnGenerosity_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 14;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);

        }

        protected void btnWaterBaptisim_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 15;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);

        }

        protected void btnCallofGod_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 16;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);

        }

        protected void btnPrayer_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 17;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);

        }

        protected void btnKingdom_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 18;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);
        }

        protected void btnMembership_Click(object sender, EventArgs e)
        {
            mvClasses.ActiveViewIndex = 19;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);
        }

        private void PopulateFields()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            {
                DataTable dt = new DataTable();
                con.Open();
                SqlDataReader myReader = null;
                SqlCommand myCommand = new SqlCommand("select * from Disciple where Discipler_ID='" + Session["username"] + "'", con);

                myReader = myCommand.ExecuteReader();

                while (myReader.Read())
                {
                    // labels for statuses.
                    lblAssurance.Text = (myReader["Assurance_Status"].ToString());
                    lblBible.Text = (myReader["Bible_Status"].ToString());
                    lblGod.Text = (myReader["God_Status"].ToString());
                    lblManSatan.Text = (myReader["ManSatan_Status"].ToString());
                    lblJesus.Text = (myReader["Jesus_Status"].ToString());
                    lblCross.Text = (myReader["Cross_Status"].ToString());
                    lblBlood.Text = (myReader["Blood_Status"].ToString());
                    lblResurrection.Text = (myReader["Resurrection_Status"].ToString());
                    lblRepentance.Text = (myReader["Repentance_Status"].ToString());
                    lblFaith.Text = (myReader["Faith_Status"].ToString());
                    lblHolySpirit.Text = (myReader["HolySpirit_Status"].ToString());
                    lblTempation.Text = (myReader["Temptation_Status"].ToString());
                    lblFellowship.Text = (myReader["Fellowship_Status"].ToString());
                    lblGenerosity.Text = (myReader["Generosity_Status"].ToString());
                    lblBaptisim.Text = (myReader["WaterBaptism_Status"].ToString());
                    lblCallOfGod.Text = (myReader["CallOfGod_Status"].ToString());
                    lblPrayer.Text = (myReader["Prayer_Status"].ToString());
                    lblKingdom.Text = (myReader["KingdomLiving_Status"].ToString());
                    lblMembership.Text = (myReader["Membership_Status"].ToString());

                    //ddlAssurance.SelectedItem.Text = (myReader["Assurance_Status"].ToString());
                    //DropDownListCountry.SelectedItem.Text = (myReader["country"].ToString());

                    //labels and texts from database for updates

                    txtStartAssur.Text = (myReader["Assurance_Start_Date"].ToString());
                    txtEndAssur.Text = (myReader["Assurance_End_Date"].ToString());
                    txtOCAssur.Text = (myReader["Assurance_Comment"].ToString());

                    txtStartBible.Text = (myReader["Bible_Start_Date"].ToString());
                    txtEndBible.Text = (myReader["Bible_End_Date"].ToString());
                    txtOCBible.Text = (myReader["Bible_Comment"].ToString());

                    txtStartGod.Text = (myReader["God_Start_Date"].ToString());
                    txtEndGod.Text = (myReader["God_End_Date"].ToString());
                    txtOCGod.Text = (myReader["God_Comment"].ToString());

                    txtStartManSatan.Text = (myReader["ManSatan_Start_Date"].ToString());
                    txtEndManSatan.Text = (myReader["ManSatan_End_Date"].ToString());
                    txtOCManSatan.Text = (myReader["ManSatan_Comment"].ToString());

                    txtStartJesus.Text = (myReader["Jesus_Start_Date"].ToString());
                    txtEndJesus.Text = (myReader["Jesus_End_Date"].ToString());
                    txtOCJesus.Text = (myReader["Jesus_Comment"].ToString());

                    txtStartCross.Text = (myReader["Cross_Start_Date"].ToString());
                    txtEndCross.Text = (myReader["Cross_End_Date"].ToString());
                    txtOCCross.Text = (myReader["Cross_Comment"].ToString());

                    txtStartBlood.Text = (myReader["Blood_Start_Date"].ToString());
                    txtEndBlood.Text = (myReader["Blood_End_Date"].ToString());
                    txtOCBlood.Text = (myReader["Blood_Comment"].ToString());

                    txtStartResurr.Text = (myReader["Resurrection_Start"].ToString());
                    txtEndResurr.Text = (myReader["Resurrection_End_Date"].ToString());
                    txtOCResurr.Text = (myReader["Resurrection_Comment"].ToString());

                    txtStartRepent.Text = (myReader["Repentance_Start_Date"].ToString());
                    txtEndRepent.Text = (myReader["Repentence_End_Date"].ToString());
                    txtOCRepent.Text = (myReader["Repentance_Comment"].ToString());

                    txtStartFaith.Text = (myReader["Faith_Start_Date"].ToString());
                    txtEndFaith.Text = (myReader["Faith_End_Date"].ToString());
                    txtOCFaith.Text = (myReader["Faith_Comment"].ToString());

                    txtStartHoly.Text = (myReader["HolySpirit_Start_Date"].ToString());
                    txtEndHoly.Text = (myReader["HolySpirit_End_Date"].ToString());
                    txtOCHoly.Text = (myReader["HolySpirit_Comment"].ToString());

                    txtStartTempt.Text = (myReader["Temptation_Start_Date"].ToString());
                    txtEndTempt.Text = (myReader["Temptation_End_Date"].ToString());
                    txtOCTempt.Text = (myReader["Temptation_Comment"].ToString());

                    txtStartFello.Text = (myReader["Fellowship_Start_Date"].ToString());
                    txtEndFello.Text = (myReader["Fellowship_End_Date"].ToString());
                    txtOCFello.Text = (myReader["Fellowship_Comment"].ToString());

                    txtStartGen.Text = (myReader["Generosity_Start_Date"].ToString());
                    txtEndGen.Text = (myReader["Generosity_End_Date"].ToString());
                    txtOCGen.Text = (myReader["Generosity_Comment"].ToString());

                    txtStartWB.Text = (myReader["WaterBaptism_Start_Date"].ToString());
                    txtEndWB.Text = (myReader["WaterBaptism_End_Date"].ToString());
                    txtOCWB.Text = (myReader["WaterBaptism_Comment"].ToString());

                    txtStartCall.Text = (myReader["CallOfGod_Start_Date"].ToString());
                    txtEndCall.Text = (myReader["CallOfGod_End_Date"].ToString());
                    txtOCCall.Text = (myReader["CallOfGod_Comment"].ToString());

                    txtStartPrayer.Text = (myReader["Prayer_Start_Date"].ToString());
                    txtEndPrayer.Text = (myReader["Prayer_End_Date"].ToString());
                    txtOCPrayer.Text = (myReader["Prayer_Comment"].ToString());

                    txtStartKingdom.Text = (myReader["KingdomLiving_Start_Date"].ToString());
                    txtEndKingdom.Text = (myReader["KingdomLiving_End_Date"].ToString());
                    txtOCKingdom.Text = (myReader["KingdomLiving_Comment"].ToString());

                    txtStartMember.Text = (myReader["Membership_Start_Date"].ToString());
                    txtEndMember.Text = (myReader["Membership_End_Date"].ToString());
                    txtOCMember.Text = (myReader["Membership_Comment"].ToString());

                }
                con.Close();
            }//end using
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set Assurance_Status='" + ddlAssurance.SelectedValue + "'"
                + ",Assurance_Start_Date='" + txtStartAssur.Text + "'"
                + ",Assurance_End_Date='" + txtEndAssur.Text + "'"
                + ",Assurance_Comment='" + txtOCAssur.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();

            string Completed = "Completed".ToString();
            string Inprogress = "In Progress".ToString();


            if (lblAssurance.Text == Completed.ToString()
                && lblBible.Text == Completed.ToString()
                && lblBaptisim.Text == Completed.ToString()
                && lblBlood.Text == Completed.ToString()
                && lblCallOfGod.Text == Completed.ToString()
                && lblCross.Text == Completed.ToString()
                && lblFaith.Text == Completed.ToString()
                && lblFellowship.Text == Completed.ToString()
                && lblGenerosity.Text == Completed.ToString()
                && lblGod.Text == Completed.ToString()
                && lblHolySpirit.Text == Completed.ToString()
                && lblJesus.Text == Completed.ToString()
                && lblKingdom.Text == Completed.ToString()
                && lblManSatan.Text == Completed.ToString()
                && lblMembership.Text == Completed.ToString()
                && lblPrayer.Text == Completed.ToString()
                && lblRepentance.Text == Completed.ToString()
                && lblResurrection.Text == Completed.ToString()
                && lblTempation.Text == Completed.ToString())
            {
                SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand objcmd2 = new SqlCommand("Update Disciple set Overall_Status= '" + Completed + "'"


                    + " where Disciple_Id='" + lblDiscipleID.Text + "'", con2);


                con2.Open();
                objcmd2.ExecuteNonQuery();
                con2.Close();
                //Response.Redirect("~/Discipler/successful.aspx");
            }

            else
            {
                SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand objcmd1 = new SqlCommand("Update Disciple set Overall_Status= '" + Inprogress.ToString() + "'"


                     + " where Disciple_Id='" + lblDiscipleID.Text + "'", con1);

                con1.Open();
                objcmd1.ExecuteNonQuery();
                con1.Close();
            }

            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateBible_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set Bible_Status='" + ddlBible.SelectedValue + "'"
                + ",Bible_Start_Date='" + txtStartBible.Text + "'"
                + ",Bible_End_Date='" + txtEndBible.Text + "'"
                + ",Bible_Comment='" + txtOCBible.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateGod_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set God_Status='" + ddlGod.SelectedValue + "'"
                + ",God_Start_Date='" + txtStartGod.Text + "'"
                + ",God_End_Date='" + txtEndGod.Text + "'"
                + ",God_Comment='" + txtOCGod.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateManSatan_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set ManSatan_Status='" + ddlManSatan.SelectedValue + "'"
                + ",ManSatan_Start_Date='" + txtStartManSatan.Text + "'"
                + ",ManSatan_End_Date='" + txtEndManSatan.Text + "'"
                + ",ManSatan_Comment='" + txtOCManSatan.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateJesus_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set Jesus_Status='" + ddlJesus.SelectedValue + "'"
                + ",Jesus_Start_Date='" + txtStartJesus.Text + "'"
                + ",Jesus_End_Date='" + txtEndJesus.Text + "'"
                + ",Jesus_Comment='" + txtOCJesus.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateCross_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set Cross_Status='" + ddlCross.SelectedValue + "'"
                + ",Cross_Start_Date='" + txtStartCross.Text + "'"
                + ",Cross_End_Date='" + txtEndCross.Text + "'"
                + ",Cross_Comment='" + txtOCCross.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateBlood_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set Blood_Status='" + ddlBlood.SelectedValue + "'"
                + ",Blood_Start_Date='" + txtStartBlood.Text + "'"
                + ",Blood_End_Date='" + txtEndBlood.Text + "'"
                + ",Blood_Comment='" + txtOCBlood.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateResurr_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set Resurrection_Status='" + ddlResurr.SelectedValue + "'"
                + ",Resurrection_Start='" + txtStartResurr.Text + "'"
                + ",Resurrection_End_Date='" + txtEndResurr.Text + "'"
                + ",Resurrection_Comment='" + txtOCResurr.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateRepent_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set Repentance_Status='" + ddlRepent.SelectedValue + "'"
                + ",Repentance_Start_Date='" + txtStartRepent.Text + "'"
                + ",Repentence_End_Date='" + txtEndRepent.Text + "'"
                + ",Repentance_Comment='" + txtOCRepent.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateFaith_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set Faith_Status='" + ddlFaith.SelectedValue + "'"
                + ",Faith_Start_Date='" + txtStartFaith.Text + "'"
                + ",Faith_End_Date='" + txtEndFaith.Text + "'"
                + ",Faith_Comment='" + txtOCFaith.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateHoly_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set HolySpirit_Status='" + ddlHoly.SelectedValue + "'"
                + ",HolySpirit_Start_Date='" + txtStartHoly.Text + "'"
                + ",HolySpirit_End_Date='" + txtEndHoly.Text + "'"
                + ",HolySpirit_Comment='" + txtOCHoly.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateTempt_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set Temptation_Status='" + ddlTempt.SelectedValue + "'"
                + ",Temptation_Start_Date='" + txtStartTempt.Text + "'"
                + ",Temptation_End_Date='" + txtEndTempt.Text + "'"
                + ",Temptation_Comment='" + txtOCTempt.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateFello_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set Fellowship_Status='" + ddlFello.SelectedValue + "'"
                + ",Fellowship_Start_Date='" + txtStartFello.Text + "'"
                + ",Fellowship_End_Date='" + txtEndFello.Text + "'"
                + ",Fellowship_Comment='" + txtOCFello.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateGen_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set Generosity_Status='" + ddlGen.SelectedValue + "'"
                + ",Generosity_Start_Date='" + txtStartGen.Text + "'"
                + ",Generosity_End_Date='" + txtEndGen.Text + "'"
                + ",Generosity_Comment='" + txtOCGen.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateWB_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set WaterBaptism_Status='" + ddlWB.SelectedValue + "'"
                + ",WaterBaptism_Start_Date='" + txtStartWB.Text + "'"
                + ",WaterBaptism_End_Date='" + txtEndWB.Text + "'"
                + ",WaterBaptism_Comment='" + txtOCWB.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateCall_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set CallOfGod_Status='" + ddlCall.SelectedValue + "'"
                + ",CallOfGod_Start_Date='" + txtStartCall.Text + "'"
                + ",CallOfGod_End_Date='" + txtEndCall.Text + "'"
                + ",CallOfGod_Comment='" + txtOCCall.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdatePrayer_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set Prayer_Status='" + ddlPrayer.SelectedValue + "'"
                + ",Prayer_Start_Date='" + txtStartPrayer.Text + "'"
                + ",Prayer_End_Date='" + txtEndPrayer.Text + "'"
                + ",Prayer_Comment='" + txtOCPrayer.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateKingdom_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set KingdomLiving_Status='" + ddlKingdom.SelectedValue + "'"
                + ",KingdomLiving_Start_Date='" + txtStartKingdom.Text + "'"
                + ",KingdomLiving_End_Date='" + txtEndKingdom.Text + "'"
                + ",KingdomLiving_Comment='" + txtOCKingdom.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }

        protected void btnUpdateMember_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand objcmd = new SqlCommand("Update Disciple set Membership_Status='" + ddlMember.SelectedValue + "'"
                + ",Membership_Start_Date='" + txtStartMember.Text + "'"
                + ",Membership_End_Date='" + txtEndMember.Text + "'"
                + ",Membership_Comment='" + txtOCMember.Text + "'"
                + " where Disciple_Id='" + lblDiscipleID.Text + "'", con);


            con.Open();
            objcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Discipler/successful.aspx");
        }
    }
}