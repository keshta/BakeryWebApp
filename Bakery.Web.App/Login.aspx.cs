using Bakery.BLL;
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
                    HttpCookie cookie = new HttpCookie("userBakery");
                    cookie.Value = JsonConvert.SerializeObject(user); 
                    cookie.Expires = chkRemember.Checked? DateTime.Now.AddYears(1) : DateTime.Now.AddDays(3);
                    Response.SetCookie(cookie);
                    Response.Redirect("Home.aspx");
                }
            }
            
        }

    }
}
