using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Web.UI;


namespace ecoimpactafrica
{
    public partial class Electricityconsumption : System.Web.UI.Page
    {
        protected void btnSubmitElectricity_Click(object sender, EventArgs e)
        {
           
            string energySource = DropDownList2.SelectedValue;
            double electricityUsage = Convert.ToDouble(TextBox1.Text);
            double electricityEmissions = CalculateElectricityEmissions(energySource, electricityUsage);

            // Create a new entry object
            ElectricEntryData entryData = new ElectricEntryData
            {
                EntryDate = DateTime.Now,
                EnergySource = energySource,
                ElectricityUsage = electricityUsage,
                electricityEmissions= electricityEmissions
            };
           
            List<ElectricEntryData> electricEntryList = Session["electricEntryList"] as List<ElectricEntryData> ?? new List<ElectricEntryData>();

            
            electricEntryList.Add(entryData);

            
            Session["electricEntryList"] = electricEntryList;
           

             ResultMessage.Text = $"Your estimated carbon footprint is: {electricityEmissions} kg CO2e";

            ClearFormFields();

            
            ScriptManager.RegisterStartupScript(this, GetType(), "showSnackbar", "showSnackbar();", true);

        }
        public class ElectricEntryData
        {
            public DateTime EntryDate { get; set; }
            public string EnergySource { get; set; }
            public double ElectricityUsage { get; set; }
            public double electricityEmissions { get; set; }
        }
        private double CalculateElectricityEmissions(string energySource, double electricityUsage)
        {
            double gridEmissionFactor = 0.45; 
            double solarEmissionFactor = 0.02; 
            double windEmissionFactor = 0.03;  
            double electricEmissionFactor = 0.42; 

            double emissionFactor = 0;
            switch (energySource)
            {
                case "Grid":
                    emissionFactor = gridEmissionFactor;
                    break;
                case "Solar":
                    emissionFactor = solarEmissionFactor;
                    break;
                case "Wind":
                    emissionFactor = windEmissionFactor;
                    break;
                case "Electric":
                    emissionFactor = electricEmissionFactor;
                    break;
                default:
                    // Handle other cases if needed
                    break;
            }

            // Calculate electricity emissions
            double electricityEmissions = electricityUsage * emissionFactor;

            return electricityEmissions;
        }

        private void ClearFormFields()
        {
            // Clear the form fields
            DropDownList2.SelectedIndex = 0;
            TextBox1.Text = string.Empty;
        }

        // Other methods and classes...
    }
}