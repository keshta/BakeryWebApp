using Bakery.DAL;
using Bakery.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bakery.BLL
{
    public class BlogManager
    {
        /// <summary>
        /// Returns a specific Blog for the given Id.
        /// </summary>
        public Blog Get(int id)
        {
            try
            {
                return new BlogData().Select(id);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Returns a list of Blog.
        /// </summary>
        public List<Blog> GetList()
        {
            try
            {
                return new BlogData().Select();
            }
            catch (Exception)
            {
                throw;
            }
        }
    
        /// <summary>
        /// Returns a list of Blog.
        /// </summary>
        public List<Blog> GetLatestList()
        {
            try
            {
                return new BlogData().SelectLatest();
            }
            catch (Exception)
            {
                throw;
            }
        }
        /// <summary>
        /// Validates and creates a new Blog.
        /// </summary>
        public int Add(Blog objBlog)
        {
            try
            {
                return new BlogData().Insert(objBlog);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Validates and update an existing Blog.
        /// </summary>
        public int Edit(Blog objBlog)
        {
            try
            {
                return new BlogData().Update(objBlog);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Removes an existing Blog.
        /// </summary>
        public int Remove(int id)
        {
            try
            {
                return new BlogData().Delete(id);
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
