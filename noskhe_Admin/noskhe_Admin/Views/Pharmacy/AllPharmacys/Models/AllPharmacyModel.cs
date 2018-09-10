using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace noskhe_Admin.Views.Pharmacy.AllPharmacys.Models
{
    public class AllPharmacyModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }
        private string _Name;

        public string Name
        {
            get { return _Name; }
            set
            {
                _Name = value;
                OnPropertyChanged("Name");
            }
        }
        private string _Phone;

        public string Phone
        {
            get { return _Phone; }
            set
            {
                _Phone = value;
                OnPropertyChanged("Phone");
            }
        }
        private string _ManagerName;

        public string ManagerName
        {
            get { return _ManagerName; }
            set
            {
                _ManagerName = value;
                OnPropertyChanged("ManagerName");
            }
        }

    }
}
