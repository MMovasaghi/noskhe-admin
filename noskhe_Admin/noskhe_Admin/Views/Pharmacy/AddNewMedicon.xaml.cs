using Microsoft.Win32;
using noskhe_Admin.Views.Pharmacy.AllPharmacys.ViewModels;
using System;
using System.Collections.Generic;
using System.IO;
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
    public partial class AddNewMedicon : UserControl
    {
        public AddNewMedicon()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Babaei(MediName.Text,1);
        }
        private async void Babaei(string name,int a)
        {
            try
            {
                Controller.Repo repo = new Controller.Repo();
                bool res = await repo.AddMedicon(name, 1);
                MessageBox.Show("Add : " + name + "\nStatus : " + res);
                if (a == 1)
                {
                    
                }
                
                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            string data = "";
            try
            {
                OpenFileDialog openFileDialog = new OpenFileDialog();
                if (openFileDialog.ShowDialog() == true)
                    data = File.ReadAllText(openFileDialog.FileName);
                MessageBox.Show(data);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            try
            {
                string a = "";
                foreach (var item in data)
                {
                    if(item != ';')
                    {
                        a += item;
                    }
                    else
                    {
                        Babaei(a,2);                        
                        a = "";
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }
    }
}
