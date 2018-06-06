using PlanetWrox.Code;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlanetWrox
{
    public partial class ManagePhotoAlbum : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // 返回类型可以更改为 IEnumerable，但是为了支持
        // 分页和排序，必须添加以下参数:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable ListView1_GetData([QueryString("PhotoAlbumId")]int photoAlbumId)
        {
            var myEntities = new PlanetWroxEntities();
            return from p in myEntities.Pictures
                   where p.PhotoAlbumId == photoAlbumId
                   select p;
        }

        public void ListView1_InsertItem([QueryString("PhotoAlbumId")]int photoAlbumId)
        {
            Picture picture = new Picture();
            TryUpdateModel(picture);
            FileUpload fileUpload1 = (FileUpload)ListView1.InsertItem.FindControl("FileUpload1");
            if (!fileUpload1.HasFile || !fileUpload1.FileName.ToLower().EndsWith(".jpg"))
            {
                CustomValidator cusValImage = (CustomValidator)ListView1.InsertItem.FindControl("cusValImage");
                cusValImage.IsValid = false;
                ModelState.AddModelError("Invalid", cusValImage.ErrorMessage);
            } // end if

            if (ModelState.IsValid && Page.IsValid)
            {
                using (var myEntites = new PlanetWroxEntities())
                {
                    picture.PhotoAlbumId = photoAlbumId;

                    string virtualFolder = "~/GigPics/";
                    string physicalFolder = Server.MapPath(virtualFolder);
                    string fileName = Guid.NewGuid().ToString();
                    string extension = Path.GetExtension(fileUpload1.FileName);

                    fileUpload1.SaveAs(Path.Combine(physicalFolder, fileName + extension));
                    picture.ImageUrl = virtualFolder + fileName + extension;

                    myEntites.Pictures.Add(picture);
                    myEntites.SaveChanges();
                } // end using
            } // end if
        }

        // id 参数名应该与控件上设置的 DataKeyNames 值匹配
        public void ListView1_DeleteItem(int id)
        {
            using (var myEntites = new PlanetWroxEntities())
            {
                var picture = (from p in myEntites.Pictures
                               where p.Id == id
                               select p).Single();
                myEntites.Pictures.Remove(picture);
                myEntites.SaveChanges();
            } // end using
        }
    }
}