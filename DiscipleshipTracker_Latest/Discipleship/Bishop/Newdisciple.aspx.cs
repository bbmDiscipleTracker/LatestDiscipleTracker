using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Discipleship.Bishop
{
    public partial class Newdisciple : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;

            String userName = Session["username"].ToString();
            lblUser.Text = userName.ToString();

            Label RegionLabel = FormView3.FindControl("RegionLabel") as Label;
            lblRegion.Text = RegionLabel.Text;

            //Label lblEmail = FormView2.FindControl("lblEmail") as Label;

        }

        protected void FormView2_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            TextBox Discipler_IDTextBox1 = FormView2.FindControl("Discipler_IDTextBox1") as TextBox;
            TextBox DisciplerNameTextBox = FormView2.FindControl("DisciplerNameTextBox") as TextBox;
            TextBox DisciplerSurnameTextBox = FormView2.FindControl("DisciplerSurnameTextBox") as TextBox;
            Label lblDisciplerUsername = FormView2.FindControl("lblDisciplerUsername") as Label;



            GridView GridView1 = FormView2.FindControl("GridView1") as GridView;
            GridViewRow gr = GridView1.SelectedRow;
            Discipler_IDTextBox1.Text = gr.Cells[1].Text;
            DisciplerNameTextBox.Text = gr.Cells[2].Text;
            DisciplerSurnameTextBox.Text = gr.Cells[3].Text;
            lblDisciplerUsername.Text = gr.Cells[6].Text;


            Label lblEmail = FormView2.FindControl("lblEmail") as Label;

            //lblEmail.Text = EmailLabel.Text;

        }

        protected void btnAssign_Click(object sender, EventArgs e)
        {
            Panel pnlAssign = FormView2.FindControl("pnlAssign") as Panel;
            pnlAssign.Visible = true;

            TextBox TextBox1 = FormView2.FindControl("TextBox1") as TextBox;

            //Random rand = new Random(100000);
            //int ccc = rand.Next(000000, 999999999);
            //TextBox1.Text = ccc.ToString();

            //Label EmailLabel = FormViewEmail.FindControl("EmailLabel") as Label;
        }

        protected void InsertCancelButton_Click(object sender, EventArgs e)
        {
            Panel pnlAssign = FormView2.FindControl("pnlAssign") as Panel;
            pnlAssign.Visible = false;
        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            TextBox DisciplerNameTextBox = FormView2.FindControl("DisciplerNameTextBox") as TextBox;       //DisciplerName 
            TextBox DisciplerSurnameTextBox = FormView2.FindControl("DisciplerSurnameTextBox") as TextBox; //DisciplerSurname
            Label lblDisciplerUsername = FormView2.FindControl("lblDisciplerUsername") as Label;

            TextBox FNameTextBox = FormView2.FindControl("FNameTextBox") as TextBox;                    //FName
            TextBox TextBox1 = FormView2.FindControl("TextBox1") as TextBox;                            //Disciple_Id
            TextBox SurnameTextBox = FormView2.FindControl("SurnameTextBox") as TextBox;                //Surname
            TextBox Date_Of_BirthTextBox = FormView2.FindControl("Date_Of_BirthTextBox") as TextBox;    //Date_Of_Birth
            TextBox Cell_NumberTextBox = FormView2.FindControl("Cell_NumberTextBox") as TextBox;        //Cell_Number
            TextBox EmailTextBox = FormView2.FindControl("EmailTextBox") as TextBox;                    //Email
            DropDownList dropDownList1 = FormView2.FindControl("dropDownList1") as DropDownList;        //Gender
            DropDownList ddlProvince = FormView2.FindControl("ddlProvince") as DropDownList;            //Province*
            TextBox Str_NameTextBox = FormView2.FindControl("Str_NameTextBox") as TextBox;              //StreetNum
            TextBox txtRegion = FormView2.FindControl("txtRegion") as TextBox;                          //Region*
            TextBox txtChurch = FormView2.FindControl("txtChurch") as TextBox;                          //Church*
            TextBox Str_NumTextBox = FormView2.FindControl("Str_NumTextBox") as TextBox;                //Str_Num
            DropDownList ddlStatus = FormView2.FindControl("ddlStatus") as DropDownList;                //Status*
            TextBox Str_SuburbTextBox = FormView2.FindControl("Str_SuburbTextBox") as TextBox;          //Str_Suburb
            TextBox Str_TownTextBox = FormView2.FindControl("Str_TownTextBox") as TextBox;              //Str_Town
         
           



            SqlConnection conCase = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand Case = new SqlCommand("Insert into Disciple (FName, Surname, Date_Of_Birth, Cell_Number, Email, Gender, Str_Name, Str_Num, Str_Suburb, Str_Town, Province, Region, Church, Overall_Status, DisciplerSurname, DisciplerName, Discipler_ID) values" +
                                                                 " (@FName, @Surname, @Date_Of_Birth, @Cell_Number, @Email, @Gender, @Str_Name, @Str_Num, @Str_Suburb, @Str_Town, @Province, @Region, @Church, @Overall_Status, @DisciplerSurname, @DisciplerName, @Discipler_ID)", conCase);

            // Case.Parameters.AddWithValue("@Case_Id", txtCaseNumber.Text);
            //DateTime ts = DateTime.Now;
            //String DateReported = ts.ToString("MM/dd/yyy");

            //String TimeReported = ts.ToString("hh:mm");

            //Case.Parameters.AddWithValue("@Disciple_Id", TextBox1.Text); Disciple_Id
            Case.Parameters.AddWithValue("@FName", FNameTextBox.Text);
            Case.Parameters.AddWithValue("@Surname", SurnameTextBox.Text);
            Case.Parameters.AddWithValue("@Date_Of_Birth", Date_Of_BirthTextBox.Text);
            Case.Parameters.AddWithValue("@Cell_Number", Cell_NumberTextBox.Text);
            Case.Parameters.AddWithValue("@Email", EmailTextBox.Text);
            Case.Parameters.AddWithValue("@Gender", dropDownList1.SelectedValue);
            Case.Parameters.AddWithValue("@Str_Name", Str_NameTextBox.Text);
            Case.Parameters.AddWithValue("@Str_Num", Str_NumTextBox.Text);
            Case.Parameters.AddWithValue("@Str_Suburb", Str_SuburbTextBox.Text);
            Case.Parameters.AddWithValue("@Str_Town", Str_TownTextBox.Text);
            Case.Parameters.AddWithValue("@Province", ddlProvince.SelectedValue);
            Case.Parameters.AddWithValue("@Region", txtRegion.Text);
            Case.Parameters.AddWithValue("@Church", txtChurch.Text);
            Case.Parameters.AddWithValue("@Overall_Status", ddlStatus.SelectedValue);
            Case.Parameters.AddWithValue("@DisciplerSurname", DisciplerSurnameTextBox.Text);
            Case.Parameters.AddWithValue("@DisciplerName", DisciplerNameTextBox.Text);
            Case.Parameters.AddWithValue("@Discipler_ID", lblDisciplerUsername.Text);

            conCase.Open();
            Case.ExecuteNonQuery();
            conCase.Close();

            Response.Redirect("~/Bishop/successful.aspx");

            FormView FormView4 = FormView2.FindControl("formView4") as FormView;
            
            Label lblEmail = FormView2.FindControl("lblEmail") as Label;

            //Label EmailLabel = FormView4.FindControl("EmailLabel") as Label;

            //lblEmail.Text = EmailLabel.Text;
        }

        protected void FormView4_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {
            //Label EmailLabel1 = FormView4.FindControl("EmailLabel1") as Label;

        }
    }
}