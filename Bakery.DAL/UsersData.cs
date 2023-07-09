using Bakery.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bakery.DAL
{
   public class UsersData
    {

        private SqlConnection con = SqlConnector.GetConnection();

        public Users LoginUser(string username, string password)
        {
            Users obj = new Users();

            try
            {
                string sql = "SELECT top 1 * FROM Users WHERE (lower(Email) = @Username or lower(Username) = @Username or lower(Mobile) = @Username) and Password = @Password";
                var sqlCommand = new SqlCommand(sql, con);
                sqlCommand.Parameters.Add(new SqlParameter("@Username", username.Trim().ToLower()));
                sqlCommand.Parameters.Add(new SqlParameter("@Password", password));
                SqlDataReader dataReader;
                con.Open();
                dataReader = sqlCommand.ExecuteReader();

                if (!dataReader.HasRows)
                    return null;

                while (dataReader.Read())
                {
                    /*
                       obj.ID = Convert.ToInt64(dataReader["ID"].ToString());
                       obj.Username = dataReader["Username"].ToString();
                       obj.FullName = dataReader["FullName"].ToString();
                       obj.Email = dataReader["Email"].ToString();
                       obj.Email = dataReader["Email"].ToString();
                       obj.Mobile = dataReader["Mobile"].ToString();
                       obj.Image = dataReader["Image"].ToString();
                       obj.IsAdmin = Convert.ToBoolean(dataReader["IsAdmin"].ToString());
                       obj.IsActive = Convert.ToBoolean(dataReader["IsActive"].ToString());
                       obj.DateCreated = Convert.ToDateTime(dataReader["DateCreated"].ToString());
                     */
                    for (int inc = 0; inc < dataReader.FieldCount; inc++)
                    {
                        if (!string.IsNullOrWhiteSpace(dataReader.GetValue(inc).ToString()))
                        {
                            Type type = obj.GetType();
                            var prop = type.GetProperty(dataReader.GetName(inc));
                            prop.SetValue(obj, dataReader.GetValue(inc), null);
                        }
                    }
                }
                dataReader.Close();
                sqlCommand.Dispose();
            }
            catch (Exception ex)
            {
                if (con.State != ConnectionState.Closed)
                {
                    con.Close();
                }
                return null;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            return obj;
        }

        public bool EmailIsExist(string email, long id=0)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(email))
                    return false;

                string sql = "SELECT COUNT(*) FROM Users ";
                if (id > 0)
                    sql += $" WHERE (lower(Email) = lower('{email}') and ID = {id}) or (lower(Email) = lower('{email}') and ID <> {id})";
                    
                else
                    sql += $"WHERE lower(Email)='{email}'";

                con.Open();
                using (SqlCommand command = new SqlCommand(sql, con))
                {
                    int count = (Int32)command.ExecuteScalar();
                    con.Close();
                    if (count > 0)
                        return true;
                }
            }
            catch (Exception)
            {
                //throw;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            return false;
        }

        public bool UsernameIsExist(string username, long id = 0)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(username))
                    return false;

                string sql = "SELECT COUNT(*) FROM Users ";
                if (id > 0)
                    sql += $" WHERE (Username = '{username}' and ID={id}) or (Username='{username}' and ID <> {id})";

                else
                    sql += $"WHERE lower(Username) = '{username}'";

                con.Open();
                using (SqlCommand command = new SqlCommand(sql, con))
                {
                    int count = (Int32)command.ExecuteScalar();
                    con.Close();
                    if (count > 0)
                        return true;
                }
                
            }
            catch (Exception ex)
            {
                //throw;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            return false;
        }

        public bool MobileIsExist(string mobile, long id = 0)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(mobile))
                    return false;

                string sql = "SELECT COUNT(*) FROM Users ";
                if (id > 0)
                    sql += $" WHERE (Mobile='{mobile}' and ID <> {id})";

                else
                    sql += $"WHERE lower(Mobile) = '{mobile}'";

                con.Open();
                using (SqlCommand command = new SqlCommand(sql, con))
                {
                    int count = (Int32)command.ExecuteScalar();
                    con.Close();
                    if (count > 0)
                        return true;
                }
            }
            catch (Exception ex)
            {
               // throw;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            return false;
        }


        /// <summary>
        /// Execute the Select Query and returns a specific Users for the given Id.
        /// </summary>
        public Users Select(long id)
        {
            var obj = new Users();

            try
            {
                var sqlCommand = new SqlCommand("SELECT top 1 * FROM Users WHERE ID = @ID", con);
                sqlCommand.Parameters.Add(new SqlParameter("@ID", id));
                SqlDataReader dataReader;
                con.Open();
                dataReader = sqlCommand.ExecuteReader();

                while (dataReader.Read())
                {
                    //Status = Convert.ToString(dataReader["BRND_STATUS"].ToString()),
                    for (int inc = 0; inc < dataReader.FieldCount; inc++)
                    {
                        if (!string.IsNullOrWhiteSpace(dataReader.GetValue(inc).ToString()))
                        {
                            Type type = obj.GetType();
                            var prop = type.GetProperty(dataReader.GetName(inc));
                            prop.SetValue(obj, dataReader.GetValue(inc), null);
                        }
                    }
                }
                dataReader.Close();
                sqlCommand.Dispose();
            }
            catch (Exception ex)
            {
                //throw;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            return obj;
        }

        /// <summary>
        /// Execute the Select Query and returns a List of Users.
        /// </summary>
        public List<Users> Select()
        {
            List<Users> list = new List<Users>();
            try
            {
                var sqlCommand = new SqlCommand("SELECT * FROM Users", con);
                SqlDataReader dataReader;
                con.Open();
                dataReader = sqlCommand.ExecuteReader();

                while (dataReader.Read())
                {
                    var obj = new Users();
                    for (int inc = 0; inc < dataReader.FieldCount; inc++)
                    {
                        if (!string.IsNullOrWhiteSpace(dataReader.GetValue(inc).ToString()))
                        {
                            Type type = obj.GetType();
                            var prop = type.GetProperty(dataReader.GetName(inc));
                            prop.SetValue(obj, dataReader.GetValue(inc), null);
                        }
                    }

                    list.Add(obj);
                }
                dataReader.Close();
                sqlCommand.Dispose();
            }
            catch (Exception)
            {
                //throw;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            return list;
        }

        /// <summary>
        /// Inserts a new User in database as per Insert Flag.
        /// </summary>
        public long Insert(Users obj)
        {
            long result = 0;

            try
            {
                string sql = $"INSERT INTO Users(Username,Password,FullName,Email,Image,Mobile,IsAdmin,IsActive,DateCreated) " +
                             $"VALUES(@Username,@Password,@FullName,@Email,@Image,@v,0,1,GETDATE()) " +
                             $"Select cast(Scope_Identity() as bigint)";
                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.Add(new SqlParameter("@Username", obj.Username));
                    cmd.Parameters.Add(new SqlParameter("@Password", obj.Password));
                    cmd.Parameters.Add(new SqlParameter("@FullName", obj.FullName));
                    cmd.Parameters.Add(new SqlParameter("@Email", obj.Email));
                    cmd.Parameters.Add(new SqlParameter("@Image", obj.Image));
                    cmd.Parameters.Add(new SqlParameter("@Mobile", obj.Mobile));
                    result = (long)cmd.ExecuteScalar();
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                //throw;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            return result;
        }


        /// <summary>
        /// Update an existing Users in database as per Upsert Flag.
        /// </summary>
        public long Update(Users obj)
        {
            int result = 0;

            try
            {
                string sql = $"UPDATE Users SET FullName=@FullName, Mobile=@Mobile ";

                if (!string.IsNullOrWhiteSpace(obj.Password))
                    sql = $"{sql} ,Password=@Password ";

                sql = $"{sql} WHERE ID={obj.ID}";

                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.Add(new SqlParameter("@Password", obj.Password));
                    cmd.Parameters.Add(new SqlParameter("@FullName", obj.FullName));
                    cmd.Parameters.Add(new SqlParameter("@Mobile", obj.Mobile));
                    result = cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                //throw;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            return obj.ID;
        }


        /// <summary>
        /// Delete an existing Users for a given Id.
        /// </summary>
        public int Delete(long id)
        {
            int result = 0;

            try
            {
                var sqlCommand = new SqlCommand("DELETE FROM Users WHERE ID = @ID", con);
                sqlCommand.Parameters.Add(new SqlParameter("@ID", id));
                con.Open();
                result = sqlCommand.ExecuteNonQuery();
                con.Close();
                sqlCommand.Dispose();
            }
            catch (Exception)
            {
               // throw;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            return result;
        }

       
    }
}
