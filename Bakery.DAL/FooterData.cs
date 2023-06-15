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
   public class FooterData
    {
        private SqlConnection con = SqlConnector.GetConnection();
        /// <summary>
        /// Execute the Select Query and returns a specific Footer for the given Id.
        /// </summary>
        public Footer Select(int id=1)
        {
            var obj = new Footer();

            try
            {
                var sqlCommand = new SqlCommand("SELECT top 1 * FROM Footer WHERE ID = @ID", con);
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
        /// Update an existing Footer in database as per Upsert Flag.
        /// </summary>
        public int Update(Footer obj)
        {
            int result = 0;

            try
            {
                string sql = $"UPDATE Footer SET SubscribeAr=@SubscribeAr, SubscribeEn=@SubscribeEn, " +
                                               $"SummaryAr=@SummaryAr, SummaryEn=@SummaryEn ";
                             //$"WHERE ID={obj.ID} ";
                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.Add(new SqlParameter("@SubscribeAr", obj.SubscribeAr));
                    cmd.Parameters.Add(new SqlParameter("@SubscribeEn", obj.SubscribeEn));
                    cmd.Parameters.Add(new SqlParameter("@SummaryAr", obj.SummaryAr));
                    cmd.Parameters.Add(new SqlParameter("@SummaryEn", obj.SummaryEn));
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
