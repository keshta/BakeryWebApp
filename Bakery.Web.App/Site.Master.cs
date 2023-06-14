using Bakery.Web.App.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery.Web.App
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lnkSettings.Visible = AppCookies.IsAdmin;

            if (AppCookies.IsLogin)
            {
                lnkLogin.Visible = false;
                divSettingUser.Visible = true;
            }

            else
            {
                lnkLogin.Visible = true;
                divSettingUser.Visible = false;
                lnkSettings.Visible = false;
            }
            
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            if (AppCookies.IsLogin)
            {
                HttpCookie currentUserCookie = HttpContext.Current.Request.Cookies["userBakery"];
                HttpContext.Current.Response.Cookies.Remove("userBakery");
                currentUserCookie.Expires = DateTime.Now.AddDays(-10);
                currentUserCookie.Value = null;
                HttpContext.Current.Response.SetCookie(currentUserCookie);
                //Response.Redirect("Home.aspx");
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
        }
    }
}