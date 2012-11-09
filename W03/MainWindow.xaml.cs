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

namespace W03
{
    /// <summary>
    /// MainWindow.xaml 的互動邏輯
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void CommonClickHandler(object sender, RoutedEventArgs e)
        {
            FrameworkElement feSource = e.Source as FrameworkElement;
            switch (feSource.Name)
            { 
                case "YesButton":
                    YesButton.Content = "Clecked";
                    break;
                case "NoButton":
                    NoButton.Content = "Clicked";
                    break;
                case "CancelButton":
                    CancelButton.Content = "Clicked";
                    break;
            }
        }
    }
}
