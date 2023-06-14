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
            get => user != null ? true : false;
        }

        public static bool IsAdmin
        {
            get
            {
                if (IsLogin)
                    return user.IsAdmin ?? false;

                return false;
            }
        }

        public static Users user 
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
        
    }
}
