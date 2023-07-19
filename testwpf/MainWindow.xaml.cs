using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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

namespace testwpf
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            LoadGrid();
        }

        SqlConnection con = new SqlConnection("Data Source=AUTOHKQ2XGTH4GW;Initial Catalog=testdb;User ID=sa;Password=sa");
        public void cleardata()
        {
            txt_FirstName.Clear();
            txt_LastName.Clear();
            txt_Age.Clear();

        }
        public void LoadGrid()
        {
            SqlCommand cmd = new SqlCommand("select * from PersonalDetails", con);
            DataTable dt = new DataTable();
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dt.Load(dr);
            con.Close();
            Datagrid.ItemsSource = dt.DefaultView;
        }
        private void Submit_click(object sender, RoutedEventArgs e)
        {
            try 
            {
                SqlCommand cmd = new SqlCommand("insert into PersonalDetails (First_Name,Last_Name,Age) values (@First_Name,@Last_Name,@Age)", con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@First_Name", txt_FirstName.Text);
                cmd.Parameters.AddWithValue("@Last_Name", txt_LastName.Text);
                cmd.Parameters.AddWithValue("@Age", txt_Age.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                LoadGrid();
                MessageBox.Show("Succesfully saved", "Saved", MessageBoxButton.OK, MessageBoxImage.Information);
                cleardata();

            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btn_Clear_Click(object sender, RoutedEventArgs e)
        {
            cleardata();
        }

     
    }
}
