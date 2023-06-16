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
   public class ContactInformationData
    {
        private SqlConnection con = SqlConnector.GetConnection();
        /// <summary>
        /// Execute the Select Query and returns a specific ContactInformation for the given Id.
        /// </summary>
        public ContactInformation Select(int id=1)
        {
            var obj = new ContactInformation();

            try
            {
                var sqlCommand = new SqlCommand("SELECT top 1 * FROM ContactInformation WHERE ID = @ID", con);
                sqlCommand.Parameters.Add(new SqlParameter("@ID", id));
                SqlDataReader dataReader;
                con.Open();
                dataReader = sqlCommand.ExecuteReader();

                while (dataReader.Read())
                {
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
                // throw;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            return obj;
        }

        /// <summary>
        /// Update an existing ContactInformation in database as per Upsert Flag.
        /// </summary>
        public int Update(ContactInformation obj)
        {
            int result = 0;

            try
            {
                string sql = $"UPDATE ContactInformation SET Address=@Address, Phone=@Phone, Email=@Email, ContactNumber=@ContactNumber, LocationMap=@LocationMap ";
                             //$"WHERE ID={obj.ID} ";
                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.Add(new SqlParameter("@Address", obj.Address??""));
                    cmd.Parameters.Add(new SqlParameter("@Phone", obj.Phone??""));
                    cmd.Parameters.Add(new SqlParameter("@Email", obj.Email??""));
                    cmd.Parameters.Add(new SqlParameter("@ContactNumber", obj.ContactNumber??""));
                    cmd.Parameters.Add(new SqlParameter("@LocationMap", obj.LocationMap??""));
                    result = cmd.ExecuteNonQuery();
                    con.Close();
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
            return result;
        }
       
    }
}
