using Bakery.BLL;
using Bakery.Web.App.Helper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery.Web.App
{
    public partial class BlogDetails : System.Web.UI.Page
    {
        BlogManager _blogManager = new BlogManager();
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                id = int.Parse(Request.QueryString["id"]);
                var blog = _blogManager.Get(id);
                if (blog != null && blog.ID > 0)
                {
                    lblDate.InnerText = blog.DateCreated.GetDate();
                    lblTitle.InnerText = blog.TitleEn;
                    lblDescription.InnerText = blog.DescriptionEn;

                    if (!string.IsNullOrWhiteSpace(blog.Image))
                        imgBlog.Src = $"{DirectlyFilePath.Blog}/{blog.Image}";
                }
                else
                    Response.Redirect("Blog.aspx");
            }
        }
    }
}