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
   public class BlogData
    {
        private SqlConnection con = SqlConnector.GetConnection();
        /// <summary>
        /// Execute the Select Query and returns a specific Blog for the given Id.
        /// </summary>
        public Blog Select(int id)
        {
            var obj = new Blog();

            try
            {
                var sqlCommand = new SqlCommand("SELECT top 1 * FROM Blog WHERE ID = @ID", con);
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
        /// Execute the Select Query and returns a List of Blog.
        /// </summary>
        public List<Blog> Select()
        {
            List<Blog> list = new List<Blog>();
            try
            {
                var sqlCommand = new SqlCommand("SELECT top 1 * FROM Blog", con);
                SqlDataReader dataReader;
                con.Open();
                dataReader = sqlCommand.ExecuteReader();

                while (dataReader.Read())
                {
                    var obj = new Blog();
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
        /// Inserts a new Blog or Update an existing Blog in database as per Upsert Flag.
        /// </summary>
        public int Insert(Blog obj)
        {
            int result = 0;

            try
            {
                string sql = $"INSERT INTO Blog(TitleAr,TitleEn,DescriptionAr,DescriptionEn,Image) " +
                             $"VALUES('{obj.TitleAr}','{obj.TitleEn}','{obj.DescriptionAr}','{obj.DescriptionEn}','{obj.Image}')";
                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
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
        /// Update an existing Blog in database as per Upsert Flag.
        /// </summary>
        public int Update(Blog obj)
        {
            int result = 0;

            try
            {
                string sql = $"UPDATE FROM Blog SET TitleAr='{obj.TitleAr}', TitleEn='{obj.TitleEn}', DescriptionAr='{obj.DescriptionEn}', " +
                                         $"DescriptionEn = '{obj.DescriptionEn}',Image = '{obj.Image}' " +
                             $"WHERE ID={obj.ID}";
                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
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
        /// Delete an existing Blog for a given Id.
        /// </summary>
        public int Delete(int id)
        {
            int result = 0;

            try
            {
                var sqlCommand = new SqlCommand("DELETE FROM Blog WHERE ID = @ID", con);
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
