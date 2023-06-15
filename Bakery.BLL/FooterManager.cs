using Bakery.DAL;
using Bakery.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bakery.BLL
{
    public class FooterManager
    {

        /// <summary>
        /// Returns a specific Footer for the given Id.
        /// </summary>
        public Footer GetFooter(int id=1)
        {
            try
            {
                return new FooterData().Select(id);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Validates and update an existing Footer.
        /// </summary>
        public int Edit(Footer objFooter)
        {
            try
            {
                return new FooterData().Update(objFooter);
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
