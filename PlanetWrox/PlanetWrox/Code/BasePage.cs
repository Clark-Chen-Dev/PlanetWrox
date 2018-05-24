﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;


public class BasePage : System.Web.UI.Page
{
    private void Page_PreRender(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(this.Title) || this.Title.Equals("Untitled Page", StringComparison.CurrentCultureIgnoreCase))
        {
            throw new Exception("Page title cannot be \"Untitled Page\" or an empty string.");
        }
    }

    private void BasePage_PreInit(object sender, EventArgs e)
    {
        HttpCookie preferredTheme = Request.Cookies.Get("PreferredTheme");
        if (preferredTheme != null)
        {
            string folder = Server.MapPath("~/App_Themes/" + preferredTheme.Value);
            if (Directory.Exists(folder))
            {
                Page.Theme = preferredTheme.Value;
            } // end if
        } // end if
    }

    public BasePage()
    {
        this.PreRender += Page_PreRender;
        this.PreInit += BasePage_PreInit;
    }

}
