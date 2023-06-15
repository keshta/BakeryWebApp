using Bakery.BLL;
using Bakery.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery.Web.App
{
    public partial class EditInformation : System.Web.UI.Page
    {
        InformationManager _informationManager = new InformationManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var obj = _informationManager.GetInformation();
                txtExperience.Text = obj.OurExperience;
                txtSpecialist.Text = obj.CakeSpecialist;
                txtProject.Text = obj.CompleteProject;
                txtClients.Text = obj.HappyClients;
                txtTitle.Text = obj.TitleEn;
                txtSummary.InnerText = obj.SummaryEn;
                txtHealthyDescription.InnerText = obj.HealthyDescriptionEn;
                txtAwardDescription.InnerText = obj.AwardWinningDescriptionEn;
            }
        }

        protected void lnkSave_Click(object sender, EventArgs e)
        {
            var info = new Information
            {
                ID = 1,
                OurExperience = txtExperience.Text.Trim(),
                CakeSpecialist = txtSpecialist.Text.Trim(),
                CompleteProject = txtProject.Text.Trim(),
                HappyClients = txtClients.Text.Trim(),
                TitleAr = txtTitle.Text.Trim(),
                TitleEn = txtTitle.Text.Trim(),
                SummaryAr = txtSummary.InnerText.Trim(),
                SummaryEn = txtSummary.InnerText.Trim(),
                HealthyDescriptionAr = txtHealthyDescription.InnerText.Trim(),
                HealthyDescriptionEn = txtHealthyDescription.InnerText.Trim(),
                AwardWinningDescriptionAr = txtAwardDescription.InnerText.Trim(),
                AwardWinningDescriptionEn = txtAwardDescription.InnerText.Trim(),
            };

            _informationManager.Edit(info);
            Response.Redirect("Setting.aspx");
        }
    }
}