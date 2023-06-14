using Bakery.DAL;
using Bakery.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bakery.BLL
{
    public class CategoryManager
    {
       
        /// <summary>
        /// Returns a specific Category for the given Id.
        /// </summary>
        public Category GetCategory(int id)
        {
            try
            {
                return new CategoryData().Select(id);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Returns a list of Category.
        /// </summary>
        public List<Category> GetCategoryList()
        {
            try
            {
                return new CategoryData().Select();
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
