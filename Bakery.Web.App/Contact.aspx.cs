using Bakery.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery.Web.App
{
    public partial class Contact : Page
    {
        ContactInformationManager _contacManager = new ContactInformationManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            var contac = _contacManager.Get();
            lblAddress.InnerText = contac.Address;
            lnkContactNo.HRef = $"tel:{contac.ContactNumber}";
            lnkContactNo.InnerText = contac.ContactNumber;
            lnkEmail.HRef = $"mailto:{contac.Email}";
            lnkEmail.InnerText = contac.Email;
        }
    }
}