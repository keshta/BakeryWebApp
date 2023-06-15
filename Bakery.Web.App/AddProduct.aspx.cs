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
    public partial class AddProduct : System.Web.UI.Page
    {
        ProductManager _productManager = new ProductManager();
        CategoryManager _categoryManager = new CategoryManager();
        BrandManager _brandManager = new BrandManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                dropBrand.DataSource = _brandManager.GetBrandList();
                dropBrand.DataTextField = "NameEn";
                dropBrand.DataValueField = "ID";
                dropBrand.DataBind();
                //dropBrand.SelectedIndex = 0;

                dropCategory.DataSource = _categoryManager.GetCategoryList();
                dropCategory.DataTextField = "TitleEn";
                dropCategory.DataValueField = "ID";
                dropCategory.DataBind();
                //dropCategory.SelectedIndex = 0;
            }
        }

        protected void lnkSave_Click(object sender, EventArgs e)
        {
            string filename = $"{Guid.NewGuid()}{Path.GetExtension(FileUpload.FileName)}";
            var obj = new Bakery.Entity.Product
            {
                NameAr = txtName.Text.Trim(),
                NameEn = txtName.Text.Trim(),
                BrandId = int.Parse(dropBrand.SelectedValue),
                CategoryId = int.Parse(dropCategory.SelectedValue),
                Price = decimal.Parse(txtPrice.Text),
                Discount = double.Parse(string.IsNullOrWhiteSpace(txtDiscount.Text)? "0" : txtDiscount.Text),
                SummaryAr = txtSummary.InnerText.Trim(),
                SummaryEn = txtSummary.InnerText.Trim(),
                InformationAr = txtInformation.InnerText.Trim(),
                InformationEn = txtInformation.InnerText.Trim(),
                DescriptionAr = txtDescription.InnerText.Trim(),
                DescriptionEn = txtDescription.InnerText.Trim(),
                Image = filename
            };

            int id = _productManager.Add(obj);
            string tempPath = Server.MapPath(DirectlyFilePath.Product);
            if (!Directory.Exists(tempPath))
                Directory.CreateDirectory(tempPath);

            FileUpload.SaveAs($"{tempPath}\\{filename}");

            Response.Redirect("ProductList.aspx");
        }
    }
}