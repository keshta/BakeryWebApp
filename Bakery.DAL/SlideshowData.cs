using Bakery.Entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bakery.DAL
{
   public class SlideshowData
    {
        private SqlConnection con = SqlConnector.GetConnection();
        /// <summary>
        /// Execute the Select Query and returns a specific Slideshow for the given Id.
        /// </summary>
        public Slideshow Select(int id)
        {
            var obj = new Slideshow();

            try
            {
                var sqlCommand = new SqlCommand("SELECT top 1 * FROM Slideshow WHERE ID = @ID", con);
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
        /// Execute the Select Query and returns a List of Slideshow.
        /// </summary>
        public List<Slideshow> Select()
        {
            List<Slideshow> list = new List<Slideshow>();
            try
            {
                var sqlCommand = new SqlCommand("SELECT * FROM Slideshow", con);
                SqlDataReader dataReader;
                con.Open();
                dataReader = sqlCommand.ExecuteReader();

                while (dataReader.Read())
                {
                    var obj = new Slideshow();
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

        /// <summary>
        /// Inserts a new Slideshow or Update an existing Slideshow in database as per Upsert Flag.
        /// </summary>
        public int Insert(Slideshow obj)
        {
            int result = 0;
            try
            {
                string sql = $"INSERT INTO Slideshow(Image) VALUES('{obj.Image}')";
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    result = cmd.ExecuteNonQuery();
                }
            }
            catch (Exception)
            {
                throw;
            }
            return result;
        }


        /// <summary>
        /// Update an existing Slideshow in database as per Upsert Flag.
        /// </summary>
        public int Update(Slideshow obj)
        {
            int result = 0;

            try
            {
                string sql = $"UPDATE FROM Slideshow SET Image = '{obj.Image}' WHERE ID={obj.ID}";
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    result = cmd.ExecuteNonQuery();
                }
            }
            catch (Exception)
            {
                //throw;
            }
            return result;
        }


        /// <summary>
        /// Delete an existing Slideshow for a given Id.
        /// </summary>
        public int Delete(int id)
        {
            int result = 0;

            try
            {
                var sqlCommand = new SqlCommand("DELETE FROM Slideshow WHERE ID=@ID", con);
                sqlCommand.Parameters.Add(new SqlParameter("@ID", id));
                con.Open();
                result = sqlCommand.ExecuteNonQuery();
                con.Close();
                sqlCommand.Dispose();
            }
            catch (Exception)
            {
                throw;
            }
            return result;
        }

       
    }
}
