using Bakery.BLL;
using Bakery.Web.App.Helper;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery.Web.App
{
    public partial class EditBlog : System.Web.UI.Page
    {
        BlogManager _blogManager = new BlogManager();
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                id = int.Parse(Request.QueryString["id"]);
                if (!Page.IsPostBack)
                {
                    var blog = _blogManager.GetBlog(id);
                    txtTitle.Text = blog.TitleEn;
                    txtDescription.InnerText = blog.DescriptionEn;
                    blah.Src = $"{DirectlyFilePath.Blog}/{blog.Image}";
                }
            }
        }

        protected void lnkSave_Click(object sender, EventArgs e)
        {
            string filename = $"{Guid.NewGuid()}{Path.GetExtension(FileUpload.FileName)}";
            var blog = _blogManager.GetBlog(id);
            blog.TitleEn = txtTitle.Text.Trim();
            blog.TitleAr = txtTitle.Text.Trim();
            blog.DescriptionEn = txtDescription.InnerText.Trim();
            blog.DescriptionAr = txtDescription.InnerText.Trim();

            string tempPath = Server.MapPath(DirectlyFilePath.Blog);
            if (!Directory.Exists(tempPath))
                Directory.CreateDirectory(tempPath);

            if(FileUpload.HasFile)
            {
                if (File.Exists($"{tempPath}\\{blog.Image}"))
                    File.Delete($"{tempPath}\\{blog.Image}");

                blog.Image = filename;
                FileUpload.SaveAs($"{tempPath}\\{filename}");
            }

            var res = _blogManager.Edit(blog);
            Response.Redirect("BlogList.aspx");
        }
    }
}