using Bakery.Entity;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakery.Web.App.Model
{
    public static class AppCookies
    {
        public static bool IsLogin 
        {
            get => User != null ? true : false;
        }

        public static bool IsAdmin
        {
            get
            {
                if (IsLogin)
                    return User.IsAdmin ?? false;

                return false;
            }
        }

        public static Users User 
        { 
            get {
                if (HttpContext.Current.Request.Cookies.Count>0)
                {
                    if (HttpContext.Current.Request.Cookies["userBakery"] != null)
                        return JsonConvert.DeserializeObject<Users>(HttpContext.Current.Request.Cookies["userBakery"].Value); ;
                }
                return null;
            }
        }

        public static void AddCookie(Users user, bool isRemember = true)
        {
            RemoveCookie();
            HttpCookie cookie = new HttpCookie("userBakery");
            cookie.Value = JsonConvert.SerializeObject(user);
            cookie.Expires = isRemember ? DateTime.Now.AddYears(1) : DateTime.Now.AddDays(3);
            HttpContext.Current.Response.SetCookie(cookie);
        }

        public static void RemoveCookie()
        {
            if (AppCookies.IsLogin)
            {
                HttpCookie currentUserCookie = HttpContext.Current.Request.Cookies["userBakery"];
                HttpContext.Current.Response.Cookies.Remove("userBakery");
                currentUserCookie.Expires = DateTime.Now.AddDays(-10);
                currentUserCookie.Value = null;
                HttpContext.Current.Response.SetCookie(currentUserCookie);
            }
        }

    }
}
