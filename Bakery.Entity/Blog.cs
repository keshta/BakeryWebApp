using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakery.Entity
{
    public class Blog
    {
        public int ID { get; set; }
        public string TitleAr { get; set; }
        public string TitleEn { get; set; }
        public string DescriptionAr { get; set; }
        public string DescriptionEn { get; set; }
        public string Image { get; set; }
    }
}
