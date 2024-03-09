using System;
using static ecoimpactafrica.Transport;
using static ecoimpactafrica.Electricityconsumption;
using ecoimpactafrica;


namespace ecoimpactafrica
{
    public partial class Reportpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                var transportEntryList = Session["transportEntryList"] as System.Collections.Generic.List<TransportEntryData>;
                var electricEntryList = Session["electricEntryList"] as System.Collections.Generic.List<ElectricEntryData>;

                
                gvTransportEmission.DataSource = transportEntryList;
                gvTransportEmission.DataBind();

                
                gvElectricityConsumption.DataSource = electricEntryList;
                gvElectricityConsumption.DataBind();
            }
        }
    }
}
