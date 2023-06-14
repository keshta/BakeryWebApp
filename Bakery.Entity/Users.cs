using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakery.Entity
{
    public class Users
    {
        public long ID { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public string Image { get; set; }
        public Nullable<bool> IsAdmin { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<System.DateTime> DateCreated { get; set; }
    }
}
