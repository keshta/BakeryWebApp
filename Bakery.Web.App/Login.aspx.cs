using Bakery.BLL;
using Bakery.Web.App.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery.Web.App
{
    public partial class Login : System.Web.UI.Page
    {
        UsersManager _usersManager;
        protected void Page_Load(object sender, EventArgs e)
        {
            _usersManager = new UsersManager();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = (txtUsername.Text ?? "").Trim();
            string password = txtPassword.Text;

            if (!string.IsNullOrWhiteSpace(username) && !string.IsNullOrWhiteSpace(password))
            {
                var user = _usersManager.LoginUser(username, password);
                if(user != null)
                {
                    AppCookies.AddCookie(user,chkRemember.Checked);
                    Response.Redirect("Home.aspx");
                }
            }
            
        }

    }
}

