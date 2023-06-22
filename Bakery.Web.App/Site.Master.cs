using Bakery.BLL;
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
        FooterManager _footerManager = new FooterManager();
        ContactInformationManager _contacManager = new ContactInformationManager();
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

            var footer = _footerManager.Get();
            var contac = _contacManager.Get();
            lblFooterSubscribe.InnerText = footer.SubscribeEn;
            lblFooterSummary.InnerText = footer.SummaryEn;
            lblFooterPhone.InnerText = contac.Phone;
            lblFooterAddress.InnerText = contac.Address;
            lblHeaderPhone.InnerText = contac.Phone;

        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            if (AppCookies.IsLogin)
            {
                AppCookies.RemoveCookie();
                //Page.Response.Redirect(Page.Request.Url.ToString(), true);
                Response.Redirect("Home.aspx");
            }
        }

        protected void lnkSearch_Click(object sender, EventArgs e)
        {
            if(!string.IsNullOrWhiteSpace(txtSearch.Value))
                Response.Redirect($"Product.aspx?search={txtSearch.Value}");
            else
                Response.Redirect($"Product.aspx");
        }
    }
}