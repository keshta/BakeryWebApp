using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakery.Entity
{
    public class Product
    {
        public long ID { get; set; }
        public string NameAr { get; set; }
        public string NameEn { get; set; }
        public Nullable<int> BrandId { get; set; }
        public Nullable<int> CategoryId { get; set; }
        public Nullable<decimal> Price { get; set; }
        public Nullable<double> Discount { get; set; }
        public string SummaryAr { get; set; }
        public string SummaryEn { get; set; }
        public string InformationAr { get; set; }
        public string InformationEn { get; set; }
        public string DescriptionAr { get; set; }
        public string DescriptionEn { get; set; }
        public string Image { get; set; }
    }
}
