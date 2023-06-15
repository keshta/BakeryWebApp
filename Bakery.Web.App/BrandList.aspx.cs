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
    public partial class BrandList : System.Web.UI.Page
    {
        static BrandManager _brandManager = new BrandManager();
        protected void Page_Load(object sender, EventArgs e)
        {

            LiteralBody.Text = GetTable();
        }

        string GetTable()
        {
            var list = _brandManager.GetBrandList();
            var str = new StringBuilder();
            string path = DirectlyFilePath.Brand;
            foreach (var item in list)
            {
                str.Append("<tr>");
                str.Append($"<td> {item.NameEn} </td>");
                str.Append($"<td> <img class='tbl-img' src='{path}/{item.Image}'/></td>");
                str.Append("<td> <a href='EditBrand.aspx?id=" + item.ID + "' class='btn btn-info btn-fill mrg-r-10'> <i class='fa fa-pencil'></i> Edit </a>  " +
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
                var obj = _brandManager.GetBrand(id);
                string path = HostingEnvironment.MapPath($"{DirectlyFilePath.Brand}/{obj.Image}");
                if (File.Exists(path))
                    File.Delete(path);

                _brandManager.Remove(id);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}