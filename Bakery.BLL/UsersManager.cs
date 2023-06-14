using Bakery.DAL;
using Bakery.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bakery.BLL
{
    public class UsersManager
    {

        /// <summary>
        /// Returns a specific User for the given Username and Password.
        /// </summary>
        public Users LoginUser(string username, string password)
        {
            try
            {
                return new UsersData().LoginUser(username, password);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public bool EmailIsExist(string email, long id = 0)
        {
            try
            {
                return new UsersData().EmailIsExist(email, id);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public bool UsernameIsExist(string username, long id=0)
        {
            try
            {
                return new UsersData().UsernameIsExist(username, id);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public bool MobileIsExist(string mobile, long id = 0)
        {
            try
            {
                return new UsersData().MobileIsExist(mobile, id);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Returns a specific User for the given Id.
        /// </summary>
        public Users GetUser(long id)
        {
            try
            {
                return new UsersData().Select(id);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Returns a list of Users.
        /// </summary>
        public List<Users> GetUsersList()
        {
            try
            {
                return new UsersData().Select();
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Validates and creates a new Users.
        /// </summary>
        public int Add(Users objUsers)
        {
            try
            {
                return new UsersData().Insert(objUsers);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Validates and update an existing Users.
        /// </summary>
        public int Edit(Users objUsers)
        {
            try
            {
                return new UsersData().Update(objUsers);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Removes an existing Users.
        /// </summary>
        public int Remove(long id)
        {
            try
            {
                return new UsersData().Delete(id);
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
