using noskhe_Admin.Controller;
using noskhe_Admin.Views.Pharmacy.AllPharmacys.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace noskhe_Admin.Views.Pharmacy
{
    /// <summary>
    /// Interaction logic for AllPharmacy.xaml
    /// </summary>
    public partial class ShowAllMedicion : UserControl
    {
        public ShowAllMedicion()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Babaei();
        }
        private async void Babaei()
        {
            try
            {
                Controller.Repo repo = new Controller.Repo();
                List<Medicine> medic = await repo.GetAllMedicion();
                int i = 0;
                foreach (var item in medic)
                {
                    i++;
                    ShowDrug showDrug = new ShowDrug();
                    showDrug.Nametext.Text = item.Name;
                    showDrug.Number.Text = i.ToString();
                    Xpanel.Children.Add(showDrug);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }
    }
}
