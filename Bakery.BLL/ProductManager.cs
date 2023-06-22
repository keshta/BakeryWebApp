using Bakery.DAL;
using Bakery.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bakery.BLL
{
    public class ProductManager
    {
        /// <summary>
        /// Returns a specific Product for the given Id.
        /// </summary>
        public Product Get(int id)
        {
            try
            {
                return new ProductData().Select(id);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Returns a list of Product.
        /// </summary>
        public List<Product> GetList()
        {
            try
            {
                return new ProductData().Select();
            }
            catch (Exception)
            {
                throw;
            }
        }


        /// <summary>
        /// Returns a list of Product.
        /// </summary>
        public List<Product> GetList(string search)
        {
            try
            {
                return new ProductData().Select(search);
            }
            catch (Exception)
            {
                throw;
            }
        }

     /// <summary>
        /// Returns a list of Product.
        /// </summary>
        public List<Product> GetLatestList()
        {
            try
            {
                return new ProductData().SelectLatest();
            }
            catch (Exception)
            {
                throw;
            }
        }
        /// <summary>
        /// Returns a list of Product.
        /// </summary>
        public List<Product> GetList(int top)
        {
            try
            {
                return new ProductData().SelectByTop(top);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Validates and creates a new Product.
        /// </summary>
        public int Add(Product objProduct)
        {
            try
            {
                return new ProductData().Insert(objProduct);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Validates and update an existing Product.
        /// </summary>
        public int Edit(Product objProduct)
        {
            try
            {
                return new ProductData().Update(objProduct);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Removes an existing Product.
        /// </summary>
        public int Remove(int id)
        {
            try
            {
                return new ProductData().Delete(id);
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
