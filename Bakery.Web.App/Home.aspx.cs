using Bakery.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery.Web.App
{
    public partial class Home : System.Web.UI.Page
    {
        ProductManager _productManager = new ProductManager();
        CategoryManager _categoryManager = new CategoryManager();
        BrandManager _brandManager = new BrandManager();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}