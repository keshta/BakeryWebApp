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
   public class ProductData
    {
        private SqlConnection con = SqlConnector.GetConnection();
        /// <summary>
        /// Execute the Select Query and returns a specific Product for the given Id.
        /// </summary>
        public Product Select(int id)
        {
            var obj = new Product();

            try
            {
                var sqlCommand = new SqlCommand("SELECT top 1 * FROM Product WHERE ID = @ID", con);
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
        /// Execute the Select Query and returns a List of Product.
        /// </summary>
        public List<Product> Select()
        {
            List<Product> list = new List<Product>();
            try
            {
                var sqlCommand = new SqlCommand("SELECT * FROM Product", con);
                SqlDataReader dataReader;
                con.Open();
                dataReader = sqlCommand.ExecuteReader();

                while (dataReader.Read())
                {
                    var obj = new Product();
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
        /// Inserts a new Product or Update an existing Product in database as per Upsert Flag.
        /// </summary>
        public int Insert(Product obj)
        {
            int result = 0;

            try
            {
                string sql = $"INSERT INTO Product(NameAr,NameEn,BrandId,CategoryId,Price,Discount,SummaryAr," +
                                                 $"SummaryEn,InformationAr,InformationEn,DescriptionAr,DescriptionEn,Image) " +
                             $"VALUES('{obj.NameAr}','{obj.NameEn}','{obj.BrandId}','{obj.CategoryId}','{obj.Price}','{obj.Discount}','{obj.SummaryAr}'," +
                                    $"'{obj.SummaryEn}','{obj.InformationAr}','{obj.InformationEn}','{obj.DescriptionAr}','{obj.DescriptionEn}','{obj.Image}')";

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
        /// Update an existing Product in database as per Upsert Flag.
        /// </summary>
        public int Update(Product obj)
        {
            int result = 0;

            try
            {
                string sql = $"UPDATE FROM Product SET NameAr='{obj.NameAr}', NameEn='{obj.NameEn}', BrandId='{obj.BrandId}', " +
                                         $"CategoryId = '{obj.CategoryId}',Price = '{obj.Price}',Discount = '{obj.Discount}'," +
                                         $"SummaryAr = '{obj.SummaryAr}',SummaryEn = '{obj.SummaryEn}',InformationAr = '{obj.InformationAr}'," +
                                         $"InformationEn = '{obj.InformationEn}',DescriptionAr = '{obj.DescriptionAr}'," +
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
        /// Delete an existing Product for a given Id.
        /// </summary>
        public int Delete(int id)
        {
            int result = 0;

            try
            {
                var sqlCommand = new SqlCommand("DELETE FROM Product WHERE ID = @ID", con);
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
