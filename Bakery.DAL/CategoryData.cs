using Bakery.Entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bakery.DAL
{
   public class CategoryData
    {
        private SqlConnection con = SqlConnector.GetConnection();
        /// <summary>
        /// Execute the Select Query and returns a specific Category for the given Id.
        /// </summary>
        public Category Select(int id)
        {
            var obj = new Category();

            try
            {
                var sqlCommand = new SqlCommand("SELECT top 1 * FROM Category WHERE ID = @ID", con);
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
            catch (Exception)
            {
                throw;
            }
            return obj;
        }

        /// <summary>
        /// Execute the Select Query and returns a List of Category.
        /// </summary>
        public List<Category> Select()
        {
            List<Category> list = new List<Category>();
            try
            {
                var sqlCommand = new SqlCommand("SELECT * FROM Category", con);
                SqlDataReader dataReader;
                con.Open();
                dataReader = sqlCommand.ExecuteReader();

                while (dataReader.Read())
                {
                    var obj = new Category();
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
                throw;
            }
            return list;
        }
    }
}
