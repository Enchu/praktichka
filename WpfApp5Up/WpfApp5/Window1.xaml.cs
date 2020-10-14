using System;
using System.Collections.Generic;
using System.Data;
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

namespace WpfApp5
{
    public partial class Window1 : Window
    {
        MySqlConnection Cn = new MySqlConnection("server = localhost; user id = root; port=3310;persistsecurityinfo=True;database=placplac");
		void Load()
		{
			Cn.Open();
			MySqlCommand cmd = new MySqlCommand("SELECT * FROM `clients`", Cn);
			DataTable dt = new DataTable();
			MySqlDataAdapter da = new MySqlDataAdapter(cmd);
			da.Fill(dt);
			Binding bind = new Binding();
			bind.Source = dt;

			DataGridOsn.SetBinding(DataGrid.ItemsSourceProperty, bind);
			DataGridOsn.ItemsSource = dt.DefaultView;
			Cn.Close();
		}
		public Window1()
        {
            InitializeComponent();
			Load();
        }

        private void TBAdd_Click(object sender, RoutedEventArgs e)
        {
			if (Fam.Text != "" && Name.Text != "" && Patronomyc.Text != "" && DateBirth.Text != "" && City.Text != "" && Street1.Text !="" && House.Text != "" && Apartment.Text != "" && Telephone.Text != "" && Socialstatus.Text != "" && Dateregistration.Text != "")
			{
				try
				{
					Cn.Open();
					
						MySqlCommand cmd = new MySqlCommand("INSERT INTO `clients`(`id`, `Fam`, `Name`, `Patronomyc`, `DateBirth`, `City`, `Street`, `House`, `Apartment`, `Telephone`, `Socialstatus`, `Dateregistration`) VALUES" +
								" ('"+null+"','" + Fam.Text + "','" + Name.Text + "','" + Patronomyc.Text + "','" + DateBirth.Text + "','" + City.Text + "','" + Street1.Text + "','" + House.Text + "','" + Apartment.Text + "','" + Telephone.Text + "','" + Socialstatus.Text + "','" + Dateregistration.Text + "')", Cn);
						cmd.ExecuteNonQuery();
						MessageBox.Show("Данные успешно добавлены");
				}
				catch (Exception ex)
				{
					MessageBox.Show("Ошибка подключения к БД" + ex);
				}
				finally
				{
					Cn.Close();
					Load();
				}
			}
            else
            {
				MessageBox.Show("Заполните все поля");
            }
		}

        private void Button_Click(object sender, RoutedEventArgs e)
        {
			MainWindow fm = new MainWindow();
			fm.Show();
			this.Close();
        }

        private void PhoneKD(object sender, KeyEventArgs e)
        {
			if (e.Key >= Key.D0 && e.Key <= Key.D9 || e.Key == Key.OemComma || e.Key == Key.OemPlus || e.Key == Key.OemMinus)
			{
				e.Handled = false;
			}
			else
			{
				e.Handled = true;
			}
		}
    }
}
