using Stimulsoft.Base.Excel;
using Stimulsoft.Report;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Discipleship.Admin
{
    public partial class Report : System.Web.UI.Page
    {
        private string appDiractory = HttpContext.Current.Server.MapPath("~/Report/DiscipleshipReport.mrt");
        protected void Page_Load(object sender, EventArgs e)
        {
            StiReport report = new StiReport();
            report.Load(appDiractory);
            StiWebViewer1.Report = report;
        }
    }
}