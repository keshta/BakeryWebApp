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
        /// Execute the Select Query and returns a List of Product.
        /// </summary>
        public List<Product> SelectLatest()
        {
            List<Product> list = new List<Product>();
            try
            {
                var sqlCommand = new SqlCommand("SELECT top 3 * FROM Product order by DateCreated desc", con);
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
        /// Execute the Select Query and returns a List of Product.
        /// </summary>
        public List<Product> SelectByTop(int top)
        {
            List<Product> list = new List<Product>();
            try
            {
                var sqlCommand = new SqlCommand($"SELECT top {top} * FROM Product", con);
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
                                                 $"SummaryEn,InformationAr,InformationEn,DescriptionAr,DescriptionEn,Image, DateCreated) " +
                             $"VALUES(@NameAr,@NameEn,@BrandId,@CategoryId,@Price,@Discount,@SummaryAr, " +
                                    $"@SummaryEn,@InformationAr,@InformationEn,@DescriptionAr,@DescriptionEn,@Image,GETDATE())";

                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.Add(new SqlParameter("@NameAr", obj.NameAr));
                    cmd.Parameters.Add(new SqlParameter("@NameEn", obj.NameEn));
                    cmd.Parameters.Add(new SqlParameter("@BrandId", obj.BrandId));
                    cmd.Parameters.Add(new SqlParameter("@CategoryId", obj.CategoryId));
                    cmd.Parameters.Add(new SqlParameter("@Price", obj.Price));
                    cmd.Parameters.Add(new SqlParameter("@Discount", obj.Discount));
                    cmd.Parameters.Add(new SqlParameter("@SummaryAr", obj.SummaryAr));
                    cmd.Parameters.Add(new SqlParameter("@SummaryEn", obj.SummaryEn));
                    cmd.Parameters.Add(new SqlParameter("@InformationAr", obj.InformationAr));
                    cmd.Parameters.Add(new SqlParameter("@InformationEn", obj.InformationEn));
                    cmd.Parameters.Add(new SqlParameter("@DescriptionAr", obj.DescriptionAr));
                    cmd.Parameters.Add(new SqlParameter("@DescriptionEn", obj.DescriptionEn));
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
        /// Update an existing Product in database as per Upsert Flag.
        /// </summary>
        public int Update(Product obj)
        {
            int result = 0;

            try
            {
                string sql = $"UPDATE Product SET NameAr=@NameAr, NameEn=@NameEn, BrandId=@BrandId, " +
                                               $" CategoryId=@CategoryId, Price=@Price, Discount=@Discount, " +
                                               $" SummaryAr=@SummaryAr, SummaryEn=@SummaryEn, InformationAr=@InformationAr, " +
                                               $" InformationEn=@InformationEn, DescriptionAr=@DescriptionAr, " +
                                               $" DescriptionEn=@DescriptionEn, Image=@Image " +
                             $"WHERE ID={obj.ID}";

                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.Add(new SqlParameter("@NameAr", obj.NameAr));
                    cmd.Parameters.Add(new SqlParameter("@NameEn", obj.NameEn));
                    cmd.Parameters.Add(new SqlParameter("@BrandId", obj.BrandId));
                    cmd.Parameters.Add(new SqlParameter("@CategoryId", obj.CategoryId));
                    cmd.Parameters.Add(new SqlParameter("@Price", obj.Price));
                    cmd.Parameters.Add(new SqlParameter("@Discount", obj.Discount));
                    cmd.Parameters.Add(new SqlParameter("@SummaryAr", obj.SummaryAr));
                    cmd.Parameters.Add(new SqlParameter("@SummaryEn", obj.SummaryEn));
                    cmd.Parameters.Add(new SqlParameter("@InformationAr", obj.InformationAr));
                    cmd.Parameters.Add(new SqlParameter("@InformationEn", obj.InformationEn));
                    cmd.Parameters.Add(new SqlParameter("@DescriptionAr", obj.DescriptionAr));
                    cmd.Parameters.Add(new SqlParameter("@DescriptionEn", obj.DescriptionEn));
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
