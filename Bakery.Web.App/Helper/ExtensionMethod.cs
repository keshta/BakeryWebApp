using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakery.Web.App.Helper
{
    public static class ExtensionMethod
    {
       public static string GetDate(this DateTime? date)
        {
            return date.HasValue ? date.Value.ToString("dd MMMM, yyyy") : "";
        }

        public static string GetShortText(this string txt, int Length = 130)
        {
            txt = string.IsNullOrWhiteSpace(txt) ? "" : txt;
            return txt.Length > Length ? txt.Substring(0, Length) + "..." : txt;
        }

        public static string GetFormatPrice(this double price)
        {
            return String.Format("{0:0.00}", price);
        }

        public static string GetFormatPrice(this double? price)
        {
            price = price ?? 0;
            return String.Format("{0:0.00}", price);
        }

        public static string GetFormatPrice(this decimal price)
        {
            return String.Format("{0:0.00}", price);
        }

        public static string GetFormatPrice(this decimal? price)
        {
            price = price ?? 0;
            return String.Format("{0:0.00}", price);
        }
    }
}