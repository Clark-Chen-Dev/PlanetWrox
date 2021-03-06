﻿using PlanetWrox.Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlanetWrox.Reviews
{
    public partial class AllByGenre : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
            {
                var allGenres = from genre in myEntities.Genres.Include("Reviews")
                                orderby genre.Name
                                select new { genre.Name, genre.Reviews };
                Repeater1.DataSource = allGenres.ToList();
                Repeater1.DataBind();
            } // end using
        }
    }
}