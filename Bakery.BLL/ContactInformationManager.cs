using Bakery.DAL;
using Bakery.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bakery.BLL
{
    public class ContactInformationManager
    {
        /// <summary>
        /// Returns a specific ContactInformation for the given Id.
        /// </summary>
        public ContactInformation GetContactInformation(int id=1)
        {
            try
            {
                return new ContactInformationData().Select(id);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Validates and update an existing ContactInformation.
        /// </summary>
        public int Edit(ContactInformation objContactInformation)
        {
            try
            {
                return new ContactInformationData().Update(objContactInformation);
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
