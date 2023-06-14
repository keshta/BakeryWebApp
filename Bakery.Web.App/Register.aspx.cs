using Bakery.BLL;
using Bakery.Entity;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery.Web.App
{
    public partial class Register : System.Web.UI.Page
    {
        UsersManager _usersManager;
        protected void Page_Load(object sender, EventArgs e)
        {
            _usersManager = new UsersManager();
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            lblError.Text = "";
            bool chkUsername = _usersManager.UsernameIsExist(txtUsername.Text.Trim());
            bool chkEmail = _usersManager.EmailIsExist(txtEmail.Text.Trim());
            bool chkMobile = _usersManager.MobileIsExist(txtMobile.Text.Trim());

            if (chkUsername)
                lblError.Text += $"Username Already Exists {Environment.NewLine}";

            if (chkEmail)
                lblError.Text += $"Email Already Exists {Environment.NewLine}";

            if (chkMobile)
                lblError.Text += $"Mobile Already Exists {Environment.NewLine}";

            if (!chkUsername && !chkEmail && !chkMobile)
            {
                lblError.Text = "";
                var obj = new Users 
                {
                    Username = txtUsername.Text.Trim(),
                    Password = txtPassword.Text.Trim(),
                    FullName = txtFullName.Text.Trim(),
                    Email = txtEmail.Text.Trim(),
                    Mobile = txtMobile.Text.Trim(),
                };
                var userId = _usersManager.Add(obj);
                var user = _usersManager.GetUser(userId);
                HttpCookie cookie = new HttpCookie("userBakery");
                cookie.Value = JsonConvert.SerializeObject(user);
                cookie.Expires = DateTime.Now.AddYears(1);
                Response.SetCookie(cookie);
                Response.Redirect("Home.aspx");
            }
        }
    }
}