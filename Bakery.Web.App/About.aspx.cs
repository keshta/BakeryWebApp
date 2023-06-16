using Bakery.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery.Web.App
{
    public partial class About : Page
    {
        AboutUsManager _aboutUsManager = new AboutUsManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            var about = _aboutUsManager.Get();
            lblAboutUs.InnerText = about.DescriptionEn;
        }
    }
}