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


namespace WpfApp5
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void BCFail(object sender, RoutedEventArgs e)
        {
            
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BTRegClient(object sender, RoutedEventArgs e)
        {
            Window1 fm = new Window1();
            fm.Show();
            this.Close();
        }

        private void BTStaff(object sender, RoutedEventArgs e)
        {
            WindowStaff fm = new WindowStaff();
            fm.Show();
            this.Close();
        }

        private void BTExit(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void BTOtdel(object sender, RoutedEventArgs e)
        {
            WindowOtdel fm = new WindowOtdel();
            fm.Show();
            this.Close();
        }

        private void BTSprav(object sender, RoutedEventArgs e)
        {

        }

        private void BTBook(object sender, RoutedEventArgs e)
        {
            WindowBook fm = new WindowBook();
            fm.Show();
            this.Close();
        }
    }
}
