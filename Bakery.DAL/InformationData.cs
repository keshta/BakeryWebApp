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
   public class InformationData
    {
        private SqlConnection con = SqlConnector.GetConnection();
        /// <summary>
        /// Execute the Select Query and returns a specific Information for the given Id.
        /// </summary>
        public Information Select(int id=1)
        {
            var obj = new Information();

            try
            {
                var sqlCommand = new SqlCommand("SELECT top 1 * FROM Information WHERE ID = @ID", con);
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
        /// Update an existing Information in database as per Upsert Flag.
        /// </summary>
        public int Update(Information obj)
        {
            int result = 0;

            try
            {
                string sql = $"UPDATE Information SET OurExperience=@OurExperience, CakeSpecialist=@CakeSpecialist, " +
                                           $"CompleteProject=@CompleteProject, HappyClients=@HappyClients, " +
                                           $"TitleAr=@TitleAr, TitleEn=@TitleEn, SummaryAr=@SummaryAr, " +
                                           $"SummaryEn=@SummaryEn, HealthyDescriptionAr=@HealthyDescriptionAr, " +
                                           $"HealthyDescriptionEn=@HealthyDescriptionEn, AwardWinningDescriptionAr=@AwardWinningDescriptionAr," +
                                           $"AwardWinningDescriptionEn=@AwardWinningDescriptionEn ";
                             //$"WHERE ID={obj.ID} ";
                
                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.Add(new SqlParameter("@OurExperience", obj.OurExperience));
                    cmd.Parameters.Add(new SqlParameter("@CakeSpecialist", obj.CakeSpecialist));
                    cmd.Parameters.Add(new SqlParameter("@CompleteProject", obj.CompleteProject));
                    cmd.Parameters.Add(new SqlParameter("@HappyClients", obj.HappyClients));
                    cmd.Parameters.Add(new SqlParameter("@TitleAr", obj.TitleAr));
                    cmd.Parameters.Add(new SqlParameter("@TitleEn", obj.TitleEn));
                    cmd.Parameters.Add(new SqlParameter("@SummaryAr", obj.SummaryAr));
                    cmd.Parameters.Add(new SqlParameter("@SummaryEn", obj.SummaryEn));
                    cmd.Parameters.Add(new SqlParameter("@HealthyDescriptionAr", obj.HealthyDescriptionAr));
                    cmd.Parameters.Add(new SqlParameter("@HealthyDescriptionEn", obj.HealthyDescriptionEn));
                    cmd.Parameters.Add(new SqlParameter("@AwardWinningDescriptionAr", obj.AwardWinningDescriptionAr));
                    cmd.Parameters.Add(new SqlParameter("@AwardWinningDescriptionEn", obj.AwardWinningDescriptionEn));

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
