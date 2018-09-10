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

namespace noskhe_Admin.Views.Pharmacy.AllPharmacys
{
    /// <summary>
    /// Interaction logic for AllPharmacy.xaml
    /// </summary>
    public partial class AllPharmacy : UserControl
    {
        public AllPharmacyVM allPahrmacyVM = new AllPharmacyVM();
        public AllPharmacy()
        {
            InitializeComponent();
            DataContext = allPahrmacyVM;
            XDataGrid.ItemsSource = allPahrmacyVM.allPharmacys;
        }

        private void SearchContent_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(SearchContent.Text))
                {
                    var find =
                        from i in allPahrmacyVM.allPharmacys
                        where i.Name.Contains(SearchContent.Text)
                        select i;
                    XDataGrid.ItemsSource = find;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happend :\n" + ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Reload_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            XDataGrid.ItemsSource = allPahrmacyVM.allPharmacys;
        }
    }
}
