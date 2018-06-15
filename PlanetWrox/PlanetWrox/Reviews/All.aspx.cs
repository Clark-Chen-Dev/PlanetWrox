using PlanetWrox.Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlanetWrox.Reviews
{
    public partial class All : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
            {
                var authorizeReviews = from review in myEntities.Reviews
                                       where review.Authorized == true
                                       orderby review.CreateDateTime descending
                                       select review;

                Repeater1.DataSource = authorizeReviews.ToList();
                Repeater1.DataBind();
            } // end using
        }
    }
}