using Bakery.DAL;
using Bakery.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bakery.BLL
{
    public class InformationManager
    {

        /// <summary>
        /// Returns a specific Information for the given Id.
        /// </summary>
        public Information Get(int id=1)
        {
            try
            {
                return new InformationData().Select(id);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Validates and update an existing Information.
        /// </summary>
        public int Edit(Information objInformation)
        {
            try
            {
                return new InformationData().Update(objInformation);
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
