using Bakery.BLL;
using Bakery.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery.Web.App
{
    public partial class EditContactUs1 : System.Web.UI.Page
    {
        ContactInformationManager _contactManager = new ContactInformationManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var obj = _contactManager.Get();
                txtLocation.Text = obj.Address;
                txtContactNo.Text = obj.ContactNumber;
                txtPhone.Text = obj.Phone;
                txtEmail.Text = obj.Email;
            }
        }

        protected void lnkSave_Click(object sender, EventArgs e)
        {
            var contact = new ContactInformation
            {
                ID = 1,
                Address = txtLocation.Text,
                ContactNumber = txtContactNo.Text,
                Email = txtEmail.Text,
                Phone = txtPhone.Text.Trim(),
            };

            _contactManager.Edit(contact);
            Response.Redirect("Setting.aspx");
        }
    }
}
   