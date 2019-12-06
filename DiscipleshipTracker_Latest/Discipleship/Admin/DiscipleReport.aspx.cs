using Stimulsoft.Report;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Discipleship.Admin
{
    public partial class DiscipleReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StiReport report = new StiReport();

            StiWebDesigner1.Report = report;
        }
    }
}