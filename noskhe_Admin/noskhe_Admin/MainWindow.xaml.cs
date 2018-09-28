using noskhe_Admin.Views.Pharmacy.AllPharmacys;
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
using noskhe_Admin.Views.Pharmacy.NewPharmacys;
namespace noskhe_Admin
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void ButtonOpenMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonOpenMenu.Visibility = Visibility.Collapsed;
            ButtonCloseMenu.Visibility = Visibility.Visible;
        }

        private void ButtonCloseMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonCloseMenu.Visibility = Visibility.Collapsed;
            ButtonOpenMenu.Visibility = Visibility.Visible;
        }
        private void SignInButton_Click(object sender, RoutedEventArgs e)
        {
            if (Username.Text.ToLower() == "123" && Password.Password == "123")
            {
                LoginGrid.Visibility = Visibility.Hidden;
                MainGrid.Visibility = Visibility.Visible;
            }
        }

        private void logoutButton_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult mbox = MessageBox.Show("آیا مطمئن هستید که می خواهید خارج شوید ؟", "Log Out", MessageBoxButton.YesNo);
            if (mbox == MessageBoxResult.Yes)
            {
                LoginGrid.Visibility = Visibility.Visible;
                MainGrid.Visibility = Visibility.Hidden;
            }            
        }

        private void AllPharmacyMenuButton_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            UserControl allPharmacy = new AllPharmacy();
            ShowGridFunc(ref allPharmacy, "All Pharmacis Data");
        }
        public void ShowGridFunc(ref UserControl userControl,string Title)
        {
            ShowGridView.Children.Clear();
            TitleTEXT.Text = Title;
            ShowGridView.Children.Add(userControl);
        }

        private void NewPharmacyMenuButton_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            UserControl newPharmacy = new NewPharmacy();
            ShowGridFunc(ref newPharmacy, "Add New Pharmacy");
        }
    }
}
