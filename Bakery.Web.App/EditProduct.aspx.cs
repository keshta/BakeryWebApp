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
    public partial class EditProduct : System.Web.UI.Page
    {
        ProductManager _productManager = new ProductManager();
        CategoryManager _categoryManager = new CategoryManager();
        BrandManager _brandManager = new BrandManager();
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                id = int.Parse(Request.QueryString["id"]);
                if (!Page.IsPostBack)
                {
                    var product = _productManager.Get(id);
                    dropBrand.DataSource = _brandManager.GetList();
                    dropBrand.DataTextField = "NameEn";
                    dropBrand.DataValueField = "ID";
                    dropBrand.DataBind();
                    //dropBrand.SelectedIndex = 0;

                    dropCategory.DataSource = _categoryManager.GetList();
                    dropCategory.DataTextField = "TitleEn";
                    dropCategory.DataValueField = "ID";
                    dropCategory.DataBind();
                    //dropCategory.SelectedIndex = 0;

                    txtName.Text = product.NameEn;
                    txtPrice.Text = product.Price.ToString();
                    txtDiscount.Text = product.Discount.ToString();
                    txtSummary.InnerText = product.SummaryEn.ToString();
                    txtInformation.InnerText = product.InformationEn.ToString();
                    txtDescription.InnerText = product.DescriptionEn.ToString();
                    blah.Src = $"{DirectlyFilePath.Product}/{product.Image}";

                    if (product.BrandId.HasValue)
                        dropBrand.SelectedValue = product.BrandId.ToString();
                    if (product.CategoryId.HasValue)
                        dropCategory.SelectedValue = product.CategoryId.ToString();
                }
            }
        }

        protected void lnkSave_Click(object sender, EventArgs e)
        {
            string filename = $"{Guid.NewGuid()}{Path.GetExtension(FileUpload.FileName)}";
            var product = _productManager.Get(id);
            product.NameAr = txtName.Text.Trim();
            product.NameEn = txtName.Text.Trim();
            product.BrandId = int.Parse(dropBrand.SelectedValue);
            product.CategoryId = int.Parse(dropCategory.SelectedValue);
            product.Price = decimal.Parse(txtPrice.Text);
            product.Discount = double.Parse(string.IsNullOrWhiteSpace(txtDiscount.Text) ? "0" : txtDiscount.Text);
            product.SummaryAr = txtSummary.InnerText.Trim();
            product.SummaryEn = txtSummary.InnerText.Trim();
            product.InformationAr = txtInformation.InnerText.Trim();
            product.InformationEn = txtInformation.InnerText.Trim();
            product.DescriptionAr = txtDescription.InnerText.Trim();
            product.DescriptionEn = txtDescription.InnerText.Trim();

            string tempPath = Server.MapPath(DirectlyFilePath.Product);
            if (!Directory.Exists(tempPath))
                Directory.CreateDirectory(tempPath);

            if (FileUpload.HasFile)
            {
                if (File.Exists($"{tempPath}\\{product.Image}"))
                    File.Delete($"{tempPath}\\{product.Image}");

                product.Image = filename;
                _productManager.Edit(product);
                FileUpload.SaveAs($"{tempPath}\\{filename}");
            }
            Response.Redirect("ProductList.aspx");
        }
    }
}