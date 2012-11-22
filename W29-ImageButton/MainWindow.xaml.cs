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
using System.Collections.ObjectModel;

namespace W29_ImageButton
{
    /// <summary>
    /// MainWindow.xaml 的互動邏輯
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            var data = new ObservableCollection<DataItem>();
            data.Add(new DataItem("John", false));
            data.Add(new DataItem("Anne", true));
            data.Add(new DataItem("BBB", true));
            data.Add(new DataItem("CCC", false));
            this.DataContext = data;

        }
    }
    public class DataItem
    {
        public String Name { get; set; }
        public Boolean IsTrue { get; set; }
        public DataItem(string name, Boolean isTrue)
        {
            this.Name = name;
            this.IsTrue = isTrue;
        }

    }
}
