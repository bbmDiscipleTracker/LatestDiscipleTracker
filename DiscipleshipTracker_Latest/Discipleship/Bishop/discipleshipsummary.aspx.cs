using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace Discipleship.Bishop
{
    public partial class discipleshipsummary : System.Web.UI.Page
    {
        SqlConnection conStr = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string query;

        protected void Page_Load(object sender, EventArgs e)
        {
            String userName = Session["username"].ToString();
            lblUser.Text = userName.ToString();

            if (!IsPostBack)
            {
                GetProvince();
                ddlRegion.Items.Insert(0, " All ");
            }

            

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void GetProvince()
        {
            query = "Select * from tblProvince";
            da = new SqlDataAdapter(query, conStr);

            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlProvince.DataSource = ds;
                ddlProvince.DataTextField = "Province";
                ddlProvince.DataValueField = "Province_Id";
                ddlProvince.DataBind();
                ddlProvince.Items.Insert(0, new ListItem(" All ", "0"));
                ddlProvince.SelectedIndex = 0;
            }
        }

        private void GetRegion()
        {
            query = "Select * from Region";
            da = new SqlDataAdapter(query, conStr);

            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlProvince.DataSource = ds;
                ddlProvince.DataTextField = "Region";
                ddlProvince.DataValueField = "Region_Id";
                ddlProvince.DataBind();
                ddlProvince.Items.Insert(0, new ListItem(" All ", "0"));
                ddlProvince.SelectedIndex = 0;
            }
        }
        protected void ddlProvince_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
           
        }

        protected void ddlRegionFilter_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlProvince_SelectedIndexChanged1(object sender, EventArgs e)
        {
            ds.Clear();
            string get_Province, Province;
            Province = ddlProvince.SelectedItem.Text;
            get_Province = ddlProvince.SelectedValue.ToString();

            if (get_Province != "0")
            {
                query = "Select Region_Id, Region from Region where Province_Id='" + get_Province.ToString() + "'";
                da = new SqlDataAdapter(query, conStr);
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    ddlRegion.DataSource = ds;
                    ddlRegion.DataTextField = "Region";
                    ddlRegion.DataValueField = "Region_Id";
                    ddlRegion.DataBind();
                    ddlRegion.Items.Insert(0, new ListItem("" + Province.ToString() + "", "0"));
                    ddlRegion.SelectedIndex = 0;
                }
            }
            else
            {
                ddlRegion.Items.Insert(0, " All ");
                ddlRegion.DataBind();
            }

            if (ddlProvince.SelectedIndex == 0)
            {
                mvSummary.ActiveViewIndex = 0;
                ddlRegion.Visible = false;
                ddlBranch.Visible = false;
                
            }
            else
            {
                mvSummary.ActiveViewIndex = 8;
                ddlRegion.Visible = true;
                TextBox1.Text = ddlProvince.SelectedItem.ToString();
            }

            if(ddlProvince.SelectedIndex == 0)
            {
                ddlOverAllStatus.Visible = false;
                ddlOverAllStatusRegion.Visible = false;
                ddlOverAllStatusChurch.Visible = false;
                ddlRegion.Visible = false;
                ddlBranch.Visible = false;
                TextBox1.Text = "";
                txtBranch.Text = "";
                txtRegion.Text = "";
            }
            else
            {
                if(ddlProvince.SelectedIndex != 0)
                {
                    ddlOverAllStatus.Visible = true;
                    ddlRegion.Visible = true;
                }
            }
        }

        protected void ddlRegion_SelectedIndexChanged(object sender, EventArgs e)
        {
            ds.Clear();
            string get_Region, Region;
            Region = ddlRegion.SelectedItem.Text;
            get_Region = ddlRegion.SelectedValue.ToString();

            if (get_Region != "0")
            {
                query = "Select Church_Id, ChurchName from tblChurch where Region_Id='" + get_Region.ToString() + "'";
                da = new SqlDataAdapter(query, conStr);
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    ddlBranch.DataSource = ds;
                    ddlBranch.DataTextField = "ChurchName";
                    ddlBranch.DataValueField = "Church_Id";
                    ddlBranch.DataBind();
                    ddlBranch.Items.Insert(0, new ListItem("" + Region.ToString() + "", "0"));
                    ddlBranch.SelectedIndex = 0;
                }
            }
            else
            {
                ddlBranch.Items.Insert(0, " All ");
                ddlBranch.DataBind();
            }
            if (ddlRegion.SelectedIndex == 0)
            {
                ddlBranch.Visible = false;
                txtBranch.Text = "";
                ddlRegion.Visible = false;
                ddlOverAllStatus.Visible = false;
                ddlOverAllStatusChurch.Visible = false;
            }
            else
            {
                ddlBranch.Visible = true;
                txtRegion.Text = ddlRegion.SelectedItem.ToString();
                mvSummary.ActiveViewIndex = 1;
                ddlOverAllStatus.Visible = false;
                //ddlOverAllStatusRegion.Visible = true;
                ddlOverAllStatus.Visible = false;
                ddlOverAllStatusChurch.Visible = false;
                ddlOverAllStatusRegion.Visible = true;
            }
            
        }

        protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
        }

        protected void ddlBranch_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlBranch.SelectedIndex == 0)
            {
                txtBranch.Text = "";
                ddlOverAllStatusRegion.Visible = false;
                ddlOverAllStatusRegion.Visible = true;
                ddlOverAllStatusChurch.Visible = false;
            }
            else
            if (ddlBranch.SelectedIndex != 0)
            {
                txtBranch.Text = ddlBranch.SelectedItem.ToString();
                mvSummary.ActiveViewIndex = 2;
                ddlOverAllStatus.Visible = false;
                ddlOverAllStatusRegion.Visible = false;
                ddlOverAllStatusChurch.Visible = true;
                

            }
        }

        protected void ddlOverAllStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlOverAllStatus.SelectedIndex != 0)
            {
                mvSummary.ActiveViewIndex = 3;
            }
            //else
            //    if(ddlOverAllStatus.SelectedIndex == 2)
            //{
            //    mvSummary.ActiveViewIndex = 4;
            //}
            //else
            //{
            //    mvSummary.ActiveViewIndex = 0;
            //}
                   
        }

        protected void ddlOverAllStatusRegion_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlOverAllStatusRegion.SelectedIndex == 0)
            {
                mvSummary.ActiveViewIndex = 1;
            }
            else
            {
                mvSummary.ActiveViewIndex = 5;
            }
           
        }

        protected void ddlOverAllStatusChurch_SelectedIndexChanged(object sender, EventArgs e)
        {
            mvSummary.ActiveViewIndex = 8;
        }
    }
}