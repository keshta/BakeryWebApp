using Bakery.BLL;
using Bakery.Web.App.Helper;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Hosting;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery.Web.App
{
    public partial class ProductList : System.Web.UI.Page
    {
        static ProductManager _productManager = new ProductManager();
        static CategoryManager _categoryManager = new CategoryManager();
        static BrandManager _brandManager = new BrandManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            LiteralBody.Text = GetTable();
        }

        string GetTable()
        {
            var brands = _brandManager.GetBrandList();
            var categories = _categoryManager.GetCategoryList();
            var list = _productManager.GetProductList();

            var str = new StringBuilder();
            string path = DirectlyFilePath.Product;
            foreach (var item in list)
            {
                var category = categories.FirstOrDefault(c=>c.ID == item.CategoryId);
                var brand = categories.FirstOrDefault(b=>b.ID == item.BrandId);

                str.Append("<tr>");
                str.Append($"<td> {item.NameEn} </td>");
                str.Append($"<td> {brand.TitleEn} </td>");
                str.Append($"<td> {category.TitleEn} </td>");
                str.Append($"<td> {item.Price} </td>");
                str.Append($"<td> <img class='tbl-img' src='{path}/{item.Image}'/></td>");
                str.Append("<td> <a href='EditProduct.aspx?id=" + item.ID + "' class='btn btn-info btn-fill mrg-r-10'> <i class='fa fa-pencil'></i> Edit </a>  " +
                               " <a href='javascript:void(0);' class='btn btn-danger btn-fill' onclick='btnDelete(" + item.ID + ")'> <i class='fa fa-trash'></i> Delete</a>" +
                           "</td>");
                str.Append("</tr>");
            }

            return str.ToString();
        }

        [WebMethod]
        public static bool DeleteItem(int id)
        {
            try
            {
                var obj = _productManager.GetProduct(id);
                string path = HostingEnvironment.MapPath($"{DirectlyFilePath.Product}/{obj.Image}");
                if (File.Exists(path))
                    File.Delete(path);

                _productManager.Remove(id);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}