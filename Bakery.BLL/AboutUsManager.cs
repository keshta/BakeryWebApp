using Bakery.DAL;
using Bakery.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bakery.BLL
{
    public class AboutUsManager
    {

        /// <summary>
        /// Returns a specific AboutUs for the given Id.
        /// </summary>
        public AboutUs Get(int id=1)
        {
            try
            {
                return new AboutUsData().Select(id);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Validates and update an existing AboutUs.
        /// </summary>
        public int Edit(AboutUs objAboutUs)
        {
            try
            {
                return new AboutUsData().Update(objAboutUs);
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
