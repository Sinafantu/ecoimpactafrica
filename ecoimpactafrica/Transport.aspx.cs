using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ecoimpactafrica
{
    public partial class Transport : System.Web.UI.Page
    {
        protected void btnSubmitTransport_Click(object sender, EventArgs e)
        {
            
            string vehicleType = txtregion.SelectedValue;
            double distanceTravelled = Convert.ToDouble(txtcell.Text);
            string fuelType = DropDownList1.SelectedValue;
            double fuelEfficiency = Convert.ToDouble(txtfuelconsumed.Text);
            double transportEmission = CalculateTransportEmissions(fuelType, distanceTravelled, fuelEfficiency);


            TransportEntryData entryData = new TransportEntryData
            {
                EntryDate = DateTime.Now,
                VehicleType = vehicleType,
                DistanceTravelled = distanceTravelled,
                FuelType = fuelType,
                fuelEfficiency = fuelEfficiency,
                transportEmission= transportEmission,

            };
            
            List<TransportEntryData> transportEntryList = Session["transportEntryList"] as List<TransportEntryData> ?? new List<TransportEntryData>();

           
            transportEntryList.Add(entryData);

            
            Session["transportEntryList"] = transportEntryList;



            
            ResultMessage.Text = $"Carbon footprint= {transportEmission} kg CO2e";

           
            ClearFormFields();

            
            ScriptManager.RegisterStartupScript(this, GetType(), "showSnackbar", "showSnackbar();", true);

        }
        public class TransportEntryData
        {
            public DateTime EntryDate { get; set; }
            public string VehicleType { get; set; }
            public double DistanceTravelled { get; set; }
            public string FuelType { get; set; }
            public double fuelEfficiency { get; set; }
            public double transportEmission { get; set; }
        }
        private double CalculateTransportEmissions(string fuelType, double distanceTravelled, double fuelEfficiency)
        {

            double gasolineEmissionFactor = 2.31;
            double dieselEmissionFactor = 2.68;   
            double petrolEmissionFactor = 2.20;  
            double electricEmissionFactor = 0.42; 

            
            double emissionFactor = 0;
            switch (fuelType)
            {
                case "Gasoline":
                    emissionFactor = gasolineEmissionFactor;
                    break;
                case "Diesel":
                    emissionFactor = dieselEmissionFactor;
                    break;
                case "Petrol":
                    emissionFactor = petrolEmissionFactor;
                    break;
                case "Electric":
                    emissionFactor = electricEmissionFactor;
                    break;
                default:
                    // Handle other cases if needed
                    break;
            }


            // Calculate electricity emissions
            double transportEmissions = (distanceTravelled / fuelEfficiency) * emissionFactor;


            return transportEmissions;
        }

        private void ClearFormFields()
        {
            // Clear the form fields
            txtregion.SelectedIndex = 0;
            txtcell.Text = string.Empty;
            DropDownList1.SelectedIndex = 0;
            txtfuelconsumed.Text = string.Empty;
        }

        // Other methods and classes...
    }
}