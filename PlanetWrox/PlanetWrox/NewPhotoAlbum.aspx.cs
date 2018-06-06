using PlanetWrox.Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlanetWrox
{
    public partial class NewPhotoAlbum : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void DetailsView1_InsertItem()
        {
            PhotoAlbum photoAlbum = new PhotoAlbum();
            TryUpdateModel(photoAlbum);
            if (ModelState.IsValid)
            {
                using (var myEntities = new PlanetWroxEntities())
                {
                    myEntities.PhotoAlbums.Add(photoAlbum);
                    myEntities.SaveChanges();
                } // end using

                Response.Redirect(string.Format("ManagePhotoAlbum?PhotoAlbumId={0}", photoAlbum.Id.ToString()));
            } // end if
        }
    }
}