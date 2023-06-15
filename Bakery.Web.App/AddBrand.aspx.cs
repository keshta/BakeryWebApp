using Bakery.BLL;
using Bakery.Entity;
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
    public partial class AddBrand : System.Web.UI.Page
    {
        BrandManager _brandManager = new BrandManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkSave_Click(object sender, EventArgs e)
        {
            string filename = $"{Guid.NewGuid()}{Path.GetExtension(FileUpload.FileName)}";
            var obj = new Brand
            {
                NameAr = txtName.Text.Trim(),
                NameEn = txtName.Text.Trim(),
                Image = filename
            };

            int id = _brandManager.Add(obj);
            string tempPath = Server.MapPath(DirectlyFilePath.Brand);
            if (!Directory.Exists(tempPath))
                Directory.CreateDirectory(tempPath);

            FileUpload.SaveAs($"{tempPath}\\{filename}");

            Response.Redirect("BrandList.aspx");
        }
    }
}