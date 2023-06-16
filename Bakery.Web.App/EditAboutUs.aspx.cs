using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bakery.BLL;
using Bakery.Entity;

namespace Bakery.Web.App
{
    public partial class EditAboutUs : System.Web.UI.Page
    {
        AboutUsManager _aboutUsManager = new AboutUsManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var obj = _aboutUsManager.Get();
                txtDescription.InnerText = obj.DescriptionEn;
            }
        }

        protected void lnkSave_Click(object sender, EventArgs e)
        {
            var about = new AboutUs
            {
                ID = 1,
                DescriptionAr = txtDescription.InnerText.Trim(),
                DescriptionEn = txtDescription.InnerText.Trim()
            };

            _aboutUsManager.Edit(about);
            Response.Redirect("Setting.aspx");
        }
    }
}