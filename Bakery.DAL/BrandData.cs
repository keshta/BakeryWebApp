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
   public class BrandData
    {
        private SqlConnection con = SqlConnector.GetConnection();
        /// <summary>
        /// Execute the Select Query and returns a specific Brand for the given Id.
        /// </summary>
        public Brand Select(int id)
        {
            var obj = new Brand();

            try
            {
                var sqlCommand = new SqlCommand("SELECT top 1 * FROM Brand WHERE ID = @ID", con);
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
        /// Execute the Select Query and returns a List of Brand.
        /// </summary>
        public List<Brand> Select()
        {
            List<Brand> list = new List<Brand>();
            try
            {
                var sqlCommand = new SqlCommand("SELECT * FROM Brand", con);
                SqlDataReader dataReader;
                con.Open();
                dataReader = sqlCommand.ExecuteReader();

                while (dataReader.Read())
                {
                    var obj = new Brand();
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
            catch (Exception ex)
            {
                // throw;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            return list;
        }

        /// <summary>
        /// Inserts a new Brand or Update an existing Brand in database as per Upsert Flag.
        /// </summary>
        public int Insert(Brand obj)
        {
            int result = 0;

            try
            {
                string sql = $"INSERT INTO Brand(NameAr,NameEn,Image) VALUES(@NameAr,@NameEn,@Image)";
                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.Add(new SqlParameter("@NameAr", obj.NameAr));
                    cmd.Parameters.Add(new SqlParameter("@NameEn", obj.NameEn));
                    cmd.Parameters.Add(new SqlParameter("@Image", obj.Image));
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


        /// <summary>
        /// Update an existing Brand in database as per Upsert Flag.
        /// </summary>
        public int Update(Brand obj)
        {
            int result = 0;

            try
            {
                string sql = $"UPDATE Brand SET NameAr=@NameAr, NameEn=@NameEn, Image=@Image WHERE ID={obj.ID}";
                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.Add(new SqlParameter("@NameAr", obj.NameAr));
                    cmd.Parameters.Add(new SqlParameter("@NameEn", obj.NameEn));
                    cmd.Parameters.Add(new SqlParameter("@Image", obj.Image));
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


        /// <summary>
        /// Delete an existing Brand for a given Id.
        /// </summary>
        public int Delete(int id)
        {
            int result = 0;

            try
            {
                var sqlCommand = new SqlCommand("DELETE FROM Brand WHERE ID = @ID", con);
                sqlCommand.Parameters.Add(new SqlParameter("@ID", id));
                con.Open();
                result = sqlCommand.ExecuteNonQuery();
                con.Close();
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
            return result;
        }

       
    }
}
