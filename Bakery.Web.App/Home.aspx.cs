using Bakery.BLL;
using Bakery.Entity;
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
    public partial class Home : System.Web.UI.Page
    {
        ProductManager _productManager = new ProductManager();
        CategoryManager _categoryManager = new CategoryManager();
        BrandManager _brandManager = new BrandManager();
        BlogManager _blogManager = new BlogManager();
        SlideshowManager _slideshowManager = new SlideshowManager();
        InformationManager _informationManager = new InformationManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            var info = _informationManager.Get();
            lblTitleInfo.InnerText = info.TitleEn;
            lblSummaryInfo.InnerText = info.SummaryEn;
            lblHealthy.InnerText = info.HealthyDescriptionEn;
            lblAwardWinning.InnerText = info.AwardWinningDescriptionEn;
            lblOurExperience.InnerText = info.OurExperience;
            lblCakeSpecialist.InnerText = info.CakeSpecialist;
            lblCompleteProject.InnerText = info.CompleteProject;
            lblHappyClients.InnerText = info.HappyClients;

            LiteralBlog.Text = GetBlog();
            LiteralBrand.Text = GetBrand();
            LiteralProduct.Text = GetProduct();
            
            var (slideshow, carousel) = GetSlideshow();
            LiteralSlideshow.Text = slideshow;
            LiteralSlideshowCarousel.Text = carousel;
        }

        string GetBlog()
        {
            var list = _blogManager.GetLatestList();
            var str = new StringBuilder();
            foreach (var item in list)
            {
                str.Append($"<div class='col-md-4' onclick='openBlogUrl({item.ID});'> <div class='card mb-4 shadow-sm'>");
                str.Append($"<img src='{DirectlyFilePath.Blog}/{item.Image}' />");
                str.Append($"<div class='card-body'> <span class='date'> ");
                str.Append($"<i class='fa fa-calendar-o' aria-hidden='true'></i> {item.DateCreated.GetDate()} </span> ");
                str.Append($"<h5> {item.TitleEn} </h5> <p class='card-text'> {item.DescriptionEn.GetShortText()}</p>");
                str.Append($"<div class='text-center'> <div class='btn-group'>");
                str.Append($"<a href='BlogDetails.aspx?id={item.ID}' class='btn btn-md btn-rosy'>Read More</a> </div> </div> </div> </div> </div>");
            }
            return str.ToString();
        }

        string GetBrand()
        {
            var list = _brandManager.GetList();
            var str = new StringBuilder();
            foreach (var item in list)
            {
                str.Append($"<div class='col-lg-2 col-md-2'> <img src='{DirectlyFilePath.Brand}/{item.Image}' /> </div>");
            }
            return str.ToString();
        }

        string GetProduct()
        {
            var brands = _brandManager.GetList();
            var categories = _categoryManager.GetList();
            var list = _productManager.GetLatestList();
            var str = new StringBuilder();
            foreach (var item in list)
            {
                var category = categories.FirstOrDefault(c => c.ID == item.CategoryId);
                var brand = categories.FirstOrDefault(b => b.ID == item.BrandId);

                str.Append($"<div class='col-md-4' onclick='openProductUrl({item.ID});'>");
                str.Append($"<div class='card mb-4 shadow-sm'> <img src='{DirectlyFilePath.Product}/{item.Image}' />");
                str.Append($"<span class='lbl-price'> {item.Price.GetFormatPrice()} </span> <div class='card-body'>");
                str.Append($"<b> <a href='ProductDetails.aspx?id={item.ID}' class='prod-title text-dark'>{item.NameEn}</a> </b>");
                str.Append($"<div class='text-center pt-2'> <div class='row prod-info'> <div class='col'>");
                str.Append($"<label class=''>Brand:</label> <span> {brand.TitleEn}</span> </div> <div class='col'>");
                str.Append($"<label class=''>Category:</label> <span> {category.TitleEn} </span> </div> </div> </div> </div> </div> </div>");
            }
            return str.ToString();
        }

        (string, string) GetSlideshow()
        {
            var list = _slideshowManager.GetList();
            var str = new StringBuilder();
            var strCarousel = new StringBuilder();

            for (int i = 0; i < list.Count; i++)
            {
                if (i == 0)
                {
                    str.Append($"<div class='carousel-item active'> <img src='{DirectlyFilePath.Slideshow}/{list[i].Image}' class='bd-placeholder-img' /> <div class='container'> <div class='carousel-caption'> </div> </div> </div>");
                    strCarousel.Append($"<li data-target='#myCarousel' data-slide-to='{i}' class='active'></li>");
                }
                else
                {
                    str.Append($"<div class='carousel-item'> <img src='{DirectlyFilePath.Slideshow}/{list[i].Image}' class='bd-placeholder-img' /> <div class='container'> <div class='carousel-caption'> </div> </div> </div>");
                    strCarousel.Append($"<li data-target='#myCarousel' data-slide-to='{i}'></li>");
                }
            }
            return (str.ToString(), strCarousel.ToString());
        }
    }
}