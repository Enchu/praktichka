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
using System.Windows.Shapes;
using MySql.Data.MySqlClient;
using System.Data;

namespace WpfApp5
{
    public partial class WindowStaff : Window
    {
        MySqlConnection Cn = new MySqlConnection("server = localhost; user id = root; port=3310;persistsecurityinfo=True;database=placplac");
        void Load()
        {
            Cn.Open();
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM `staff`", Cn);
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            Binding bind = new Binding();
            bind.Source = dt;

            DataGridOsn.SetBinding(DataGrid.ItemsSourceProperty, bind);
            DataGridOsn.ItemsSource = dt.DefaultView;
            Cn.Close();
        }
        public WindowStaff()
        {
            InitializeComponent();
            Load();
        }

        private void TBAdd_Click(object sender, RoutedEventArgs e)
        {
            if (Fam.Text != "" && Name.Text != "" && Patronomyc.Text != "" && dateemployment.Text != "" && position.Text != "" && inn.Text != "" && retirement.Text != "" && passportseries.Text != "" && passportnumber.Text != "" && whopassport.Text != "" && datebirtch.Text != "" && city.Text != "" && street.Text != "" && house.Text != "" && apartment.Text != "" && telephone.Text != "" && maritalstatus.Text != "" && numberchildren.Text != "")
            {
                try
                {
                    Cn.Open();
                    MySqlCommand cmd = new MySqlCommand("INSERT INTO `staff`(`id`, `Fam`, `Name`, `Patronomyc`, `dateemployment`, `position`, `inn`, `retirement`, `passportseries`, `passportnumber`, `whopassport`, `datebirtch`, `city`, `street`, `house`, `apartment`, `telephone`, `maritalstatus`, `numberchildren`) values" +
                            " ('" + null + "','" + Fam.Text + "','" + Name.Text + "','" + Patronomyc.Text + "','" + dateemployment.Text + "','" + position.Text + "','" + inn.Text + "','" + retirement.Text + "','" + passportseries.Text + "','" + passportnumber.Text + "','" + whopassport.Text + "','" + datebirtch.Text + "','" + city.Text + "','" + street.Text + "','" + house.Text + "','" + apartment.Text + "','" + telephone.Text + "','" + maritalstatus.Text + "','" + numberchildren.Text + "')", Cn);
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("данные успешно добавлены");
                }
                catch (Exception ex)
                {
                    MessageBox.Show("ошибка подключения к бд" + ex);
                }
                finally
                {
                    Cn.Close();
                    Load();
                }
            }
            else
            {
                MessageBox.Show("Некоторые поля пусты");
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow fm = new MainWindow();
            fm.Show();
            this.Close();
        }
    }
}
