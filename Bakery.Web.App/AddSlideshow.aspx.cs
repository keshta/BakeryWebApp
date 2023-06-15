using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bakery.BLL;
using Bakery.Entity;
using Bakery.Web.App.Helper;

namespace Bakery.Web.App
{
    public partial class AddSlideshow : System.Web.UI.Page
    {
        SlideshowManager _slideshowManager = new SlideshowManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkSave_Click(object sender, EventArgs e)
        {
            string filename = $"{Guid.NewGuid()}{Path.GetExtension(FileUpload.FileName)}";
            var obj = new Slideshow { Image = filename};
            int id = _slideshowManager.Add(obj);
            string tempPath = Server.MapPath(DirectlyFilePath.Slideshow);
            if (!Directory.Exists(tempPath))
                Directory.CreateDirectory(tempPath);

            FileUpload.SaveAs($"{tempPath}\\{filename}");

            Response.Redirect("SlideshowList.aspx");
        }
    }
}