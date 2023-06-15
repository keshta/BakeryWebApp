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
    public partial class EditFooter : System.Web.UI.Page
    {
        FooterManager _footerManager = new FooterManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var obj = _footerManager.GetFooter();
                txtSubscribe.InnerText = obj.SubscribeEn;
                txtSummary.InnerText = obj.SummaryEn;
            }

        }

        protected void lnkSave_Click(object sender, EventArgs e)
        {
            var footer = new Footer 
            {
                ID = 1,
                SubscribeAr = txtSubscribe.InnerText.Trim(),
                SubscribeEn = txtSubscribe.InnerText.Trim(),
                SummaryAr = txtSummary.InnerText.Trim(),
                SummaryEn = txtSummary.InnerText.Trim(),
            };

            _footerManager.Edit(footer);
            Response.Redirect("Setting.aspx");
        }
    }
}