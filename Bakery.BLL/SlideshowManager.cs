using Bakery.DAL;
using Bakery.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bakery.BLL
{
    public class SlideshowManager
    {
        /// <summary>
        /// Returns a specific Slideshow for the given Id.
        /// </summary>
        public Slideshow GetSlideshow(int id)
        {
            try
            {
                return new SlideshowData().Select(id);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Returns a list of Slideshow.
        /// </summary>
        public List<Slideshow> GetSlideshowList()
        {
            try
            {
                return new SlideshowData().Select();
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Validates and creates a new Slideshow.
        /// </summary>
        public int Add(Slideshow objSlideshow)
        {
            try
            {
                return new SlideshowData().Insert(objSlideshow);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Validates and update an existing Slideshow.
        /// </summary>
        public int Edit(Slideshow objSlideshow)
        {
            try
            {
                return new SlideshowData().Update(objSlideshow);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Removes an existing Slideshow.
        /// </summary>
        public int Remove(int id)
        {
            try
            {
                return new SlideshowData().Delete(id);
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
