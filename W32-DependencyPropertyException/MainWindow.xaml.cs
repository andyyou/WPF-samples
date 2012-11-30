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

namespace W32_DependencyPropertyException
{
    /// <summary>
    /// MainWindow.xaml 的互動邏輯
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            this.TestValue = 1D;

        }

        public static DependencyProperty ValueProperty = DependencyProperty.Register("TestValue",
                                                                                      typeof(double),
                                                                                      typeof(MainWindow),
                                                                                      new PropertyMetadata(0D));
        public double TestValue
        {
            get { return (double)GetValue(ValueProperty); }
            set { SetValue(ValueProperty, value); }
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            TestValue = 9.99;
        }
    }
    
 
}
