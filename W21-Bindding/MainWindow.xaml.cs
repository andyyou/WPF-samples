using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.ComponentModel;

namespace W21_Bindding
{
    /// <summary>
    /// MainWindow.xaml 的互動邏輯
    /// </summary>
    public partial class MainWindow : Window
    {
        Company mCompany;
        public MainWindow()
        {
            InitializeComponent();
            mCompany = new Company { Name = "Microsoft" };

            this.stackPanel.DataContext = mCompany;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show(this.mCompany.Name);
            mCompany.Name = "Sun";
        }

    
        }     

}
