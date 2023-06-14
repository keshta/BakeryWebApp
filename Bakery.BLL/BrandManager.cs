using Bakery.DAL;
using Bakery.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bakery.BLL
{
    public class BrandManager
    {
        /// <summary>
        /// Returns a specific Brand for the given Id.
        /// </summary>
        public Brand GetBrand(int id)
        {
            try
            {
                return new BrandData().Select(id);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Returns a list of Brand.
        /// </summary>
        public List<Brand> GetBrandList()
        {
            try
            {
                return new BrandData().Select();
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Validates and creates a new Brand.
        /// </summary>
        public int Add(Brand objBrand)
        {
            try
            {
                return new BrandData().Insert(objBrand);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Validates and update an existing Brand.
        /// </summary>
        public int Edit(Brand objBrand)
        {
            try
            {
                return new BrandData().Update(objBrand);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Removes an existing Brand.
        /// </summary>
        public int Remove(int id)
        {
            try
            {
                return new BrandData().Delete(id);
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
