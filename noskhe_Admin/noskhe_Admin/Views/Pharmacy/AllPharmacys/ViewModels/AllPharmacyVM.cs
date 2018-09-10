using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using noskhe_Admin.Views.Pharmacy.AllPharmacys.Models;

namespace noskhe_Admin.Views.Pharmacy.AllPharmacys.ViewModels
{
    public class AllPharmacyVM
    {
        private List<AllPharmacyModel> _allpharmacys;

        public List<AllPharmacyModel> allPharmacys
        {
            get { return _allpharmacys; }
            set { _allpharmacys = value; }
        }
        public AllPharmacyVM()
        {
            allPharmacys = new List<AllPharmacyModel>();
            allPharmacys.Add(new AllPharmacyModel() { Name = "شفا1", ManagerName = "پشک فروش", Phone = "091321489237" });
            allPharmacys.Add(new AllPharmacyModel() { Name = "شفا2", ManagerName = "پشک فروش", Phone = "091321489237" });
            allPharmacys.Add(new AllPharmacyModel() { Name = "شفا3", ManagerName = "پشک فروش", Phone = "091321489237" });
            allPharmacys.Add(new AllPharmacyModel() { Name = "شفا4", ManagerName = "پشک فروش", Phone = "091321489237" });
            allPharmacys.Add(new AllPharmacyModel() { Name = "شفا5", ManagerName = "پشک فروش", Phone = "091321489237" });
        }
    }
}
