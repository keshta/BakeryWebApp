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
    public partial class Product : System.Web.UI.Page
    {
        ProductManager _productManager = new ProductManager();
        static CategoryManager _categoryManager = new CategoryManager();
        static BrandManager _brandManager = new BrandManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            LiteralBody.Text = GetData();
        }

        string GetData()
        {
            var brands = _brandManager.GetList();
            var categories = _categoryManager.GetList();
            var list = _productManager.GetList();
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
    }
}