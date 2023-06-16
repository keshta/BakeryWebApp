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
    public partial class ProductDetails : System.Web.UI.Page
    {
        CategoryManager _categoryManager = new CategoryManager();
        BrandManager _brandManager = new BrandManager();
        ProductManager _productManager = new ProductManager();
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                id = int.Parse(Request.QueryString["id"]);
                var product = _productManager.Get(id);
                
                if (product != null && product.ID > 0)
                {
                    var category = _categoryManager.Get(product.CategoryId ?? 0);
                    var brand = _brandManager.Get(product.BrandId ?? 0);

                    lblName.InnerText = product.NameEn;
                    lblCategory.InnerText = category.TitleEn;
                    lblProductCode.InnerText = $"#{product.ID}";
                    lblBrand.InnerText = brand.NameEn;
                    lblPrice.InnerText = product.Price.GetFormatPrice();
                    lblDiscount.InnerText = product.Discount.GetFormatPrice();
                    lblSummary.InnerText = product.SummaryEn;
                    lblDescription.InnerText = product.DescriptionEn;
                    lblInformation.InnerText = product.InformationEn;

                    if (!string.IsNullOrWhiteSpace(product.Image))
                        imgProduct.Src = $"{DirectlyFilePath.Product}/{product.Image}";
                }
                else
                    Response.Redirect("Blog.aspx");
            }
        }
    }
}