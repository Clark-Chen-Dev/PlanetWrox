using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlanetWrox.About
{
    public partial class AboutUs : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Banner2.NavigateUrl = "http://imar.spaanjaars.com";
            }
        }
    }
}