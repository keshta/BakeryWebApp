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
    public partial class EditBrand : System.Web.UI.Page
    {
        BrandManager _brandManager = new BrandManager();
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                id = int.Parse(Request.QueryString["id"]);
                if (!Page.IsPostBack)
                {
                    var brand = _brandManager.Get(id);
                    txtName.Text = brand.NameEn;
                    blah.Src = $"{DirectlyFilePath.Brand}/{brand.Image}";
                }
            }

        }

        protected void lnkSave_Click(object sender, EventArgs e)
        {
            string filename = $"{Guid.NewGuid()}{Path.GetExtension(FileUpload.FileName)}";
            var brand = _brandManager.Get(id);
            brand.NameEn = txtName.Text.Trim();
            brand.NameAr = txtName.Text.Trim();

            string tempPath = Server.MapPath(DirectlyFilePath.Brand);
            if (!Directory.Exists(tempPath))
                Directory.CreateDirectory(tempPath);

            if (FileUpload.HasFile)
            {
                if (File.Exists($"{tempPath}\\{brand.Image}"))
                    File.Delete($"{tempPath}\\{brand.Image}");

                brand.Image = filename;
                FileUpload.SaveAs($"{tempPath}\\{filename}");
            }

            var res = _brandManager.Edit(brand);
            Response.Redirect("BrandList.aspx");
        }
    }
}