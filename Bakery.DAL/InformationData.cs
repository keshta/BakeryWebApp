using Bakery.Entity;
using System;
using System.Collections.Generic;
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
            catch (Exception)
            {
                throw;
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
                string sql = $"UPDATE FROM Information SET OurExperience={obj.OurExperience}, CakeSpecialist = {obj.CakeSpecialist}, " +
                                           $"CompleteProject = {obj.CompleteProject}, HappyClients = {obj.HappyClients}, " +
                                           $"TitleAr = {obj.TitleAr}, TitleEn = {obj.TitleEn}, SummaryAr={obj.SummaryAr}, " +
                                           $"SummaryEn = {obj.SummaryEn}, HealthyDescriptionAr={obj.HealthyDescriptionAr}, " +
                                           $"HealthyDescriptionEn={obj.HealthyDescriptionEn}, AwardWinningDescriptionAr={obj.AwardWinningDescriptionAr}," +
                                           $"AwardWinningDescriptionEn={obj.AwardWinningDescriptionEn} ";
                             //$"WHERE ID={obj.ID} ";
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
       
    }
}
