using Bakery.BLL;
using Bakery.Web.App.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery.Web.App
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblFullName.InnerText = AppCookies.User.FullName ?? "";
            lblEmail.InnerText = AppCookies.User.Email ?? "";
            lblMobile.InnerText = AppCookies.User.Mobile??"";
        }
    }
}