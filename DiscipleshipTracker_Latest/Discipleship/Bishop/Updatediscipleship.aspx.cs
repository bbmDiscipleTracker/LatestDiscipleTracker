using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Discipleship.Bishop
{
    public partial class Updatediscipleship : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String userName = Session["username"].ToString();
            lblUser.Text = userName.ToString();
        }
    }
}