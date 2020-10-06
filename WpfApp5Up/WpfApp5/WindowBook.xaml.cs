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
    public partial class WindowBook : Window
    {
        MySqlConnection Cn = new MySqlConnection("server = localhost; user id = root; port=3306;persistsecurityinfo=True;database=placplac");
		void Load()
		{
			Cn.Open();
			MySqlCommand cmd = new MySqlCommand("SELECT * FROM `books`", Cn);
			DataTable dt = new DataTable();
			MySqlDataAdapter da = new MySqlDataAdapter(cmd);
			da.Fill(dt);
			Binding bind = new Binding();
			bind.Source = dt;

			DataGridOsn.SetBinding(DataGrid.ItemsSourceProperty, bind);
			DataGridOsn.ItemsSource = dt.DefaultView;
			Cn.Close();
		}
		public WindowBook()
        {
            InitializeComponent();
			//Load();
        }
    }
}
