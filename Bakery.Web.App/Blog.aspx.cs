using Bakery.BLL;
using Bakery.Web.App.Helper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery.Web.App
{
    public partial class Blog : System.Web.UI.Page
    {
        BlogManager _blogManager = new BlogManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            LiteralBody.Text = GetData();
        }

        string GetData()
        {
            var list = _blogManager.GetList();
            var str = new StringBuilder();
            string path = DirectlyFilePath.Blog;
            foreach (var item in list)
            {
                str.Append($"<div class='col-md-4' onclick='openBlogUrl({item.ID});'> <div class='card mb-4 shadow-sm'>");
                str.Append($"<img src='{path}/{item.Image}' />");
                str.Append($"<div class='card-body'> <span class='date'> ");
                str.Append($"<i class='fa fa-calendar-o' aria-hidden='true'></i> {item.DateCreated.GetDate()} </span> ");
                str.Append($"<h5> {item.TitleEn} </h5> <p class='card-text'> {item.DescriptionEn.GetShortText()}</p>");
                str.Append($"<div class='text-center'> <div class='btn-group'>");
                str.Append($"<a href='BlogDetails.aspx?id={item.ID}' class='btn btn-md btn-rosy'>Read More</a> </div> </div> </div> </div> </div>");
            }
            return str.ToString();
        }
       
    }
}

