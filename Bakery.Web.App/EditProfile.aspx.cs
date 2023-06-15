using Bakery.BLL;
using Bakery.Entity;
using Bakery.Web.App.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery.Web.App
{
    public partial class EditProfile : System.Web.UI.Page
    {
        UsersManager _usersManager = new UsersManager();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                txtFullName.Text = AppCookies.User.FullName;
                txtEmail.Text = AppCookies.User.Email;
                txtMobile.Text = AppCookies.User.Mobile;
                txtPassword.Text = AppCookies.User.Password;

                if (AppCookies.IsAdmin)
                {
                    divEmail.Visible = false;
                    divMobile.Visible = false;
                }
                else
                {
                    divEmail.Visible = true;
                    divMobile.Visible = true;
                }
            }
        }

        protected void lnkSave_Click(object sender, EventArgs e)
        {
            bool chkMobile = _usersManager.MobileIsExist(txtMobile.Text.Trim());
            lblError.Text = "";
            if (chkMobile)
                lblError.Text += $"Mobile Already Exists {Environment.NewLine}";

            if (!chkMobile)
            {
                lblError.Text = "";
                var obj = new Users
                {
                    ID = AppCookies.User.ID,
                    Username = AppCookies.User.Username,
                    Password = txtPassword.Text,
                    FullName = txtFullName.Text.Trim(),
                    Email = (txtEmail.Text??"").Trim(),
                    Mobile = (txtMobile.Text??"").Trim(),
                };
                var userId = _usersManager.Edit(obj);
                var user = _usersManager.GetUser(userId);
                AppCookies.AddCookie(user);
                Response.Redirect("Profile.aspx");
            }
        }
    }
}