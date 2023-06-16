using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Hosting;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bakery.BLL;
using Bakery.Web.App.Helper;

namespace Bakery.Web.App
{
    public partial class SlideshowList : System.Web.UI.Page
    {
        static SlideshowManager _slideshowManager = new SlideshowManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            LiteralBody.Text = GetTable();
        }

        string GetTable()
        {
            var list = _slideshowManager.GetList();
            var str = new StringBuilder();
            string path = DirectlyFilePath.Slideshow;
            foreach (var item in list)
            {
                str.Append("<tr>");
                str.Append($"<td> <img class='tbl-img' src='{path}/{item.Image}'/></td>");
                str.Append("<td> <a href='javascript:void(0);' class='btn btn-danger btn-fill' onclick='btnDelete("+item.ID+")'>"+
                                                    "<i class='fa fa-trash'></i> Delete</a></td>");
                str.Append("</tr>");
            }

            return str.ToString();
        }

        [WebMethod]
        public static bool DeleteItem(int id)
        {
            try
            {
                var obj = _slideshowManager.Get(id);
                string path = HostingEnvironment.MapPath($"{DirectlyFilePath.Slideshow}/{obj.Image}");
                if (File.Exists(path))
                    File.Delete(path);

                _slideshowManager.Remove(id);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}