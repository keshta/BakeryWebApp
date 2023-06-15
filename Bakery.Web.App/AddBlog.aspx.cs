using Bakery.BLL;
using Bakery.Entity;
using Bakery.Web.App.Helper;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Bakery.Web.App
{
    public partial class AddBlog : System.Web.UI.Page
    {
        BlogManager _blogManager = new BlogManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkSave_Click(object sender, EventArgs e)
        {
            string filename = $"{Guid.NewGuid()}{Path.GetExtension(FileUpload.FileName)}";
            var obj = new Bakery.Entity.Blog 
            {
                TitleAr = txtTitle.Text.Trim(),
                TitleEn = txtTitle.Text.Trim(),
                DescriptionAr = txtDescription.InnerText.Trim(),
                DescriptionEn = txtDescription.InnerText.Trim(),
                Image = filename 
            };

            int id = _blogManager.Add(obj);
            string tempPath = Server.MapPath(DirectlyFilePath.Blog);
            if (!Directory.Exists(tempPath))
                Directory.CreateDirectory(tempPath);

            FileUpload.SaveAs($"{tempPath}\\{filename}");

            Response.Redirect("BlogList.aspx");
        }
    }
}