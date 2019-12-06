using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Discipleship.Discipler
{
    public partial class mydisciples : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String userName = Session["username"].ToString();
            lblUser.Text = userName.ToString();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            lblDiscipleID.Text = gr.Cells[1].Text;

            Session["DiscipleID"] = lblDiscipleID.Text;

            Response.Redirect("~/Discipler/updatedisciple.aspx");
        }
    }
}