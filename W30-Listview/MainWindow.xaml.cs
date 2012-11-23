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

namespace W30_Listview
{
    /// <summary>
    /// MainWindow.xaml 的互動邏輯
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            listView2.DataContext = new ObservableCollection<Person>()
                                    {
                                        new Person(){Name="Andy",Age=20, FavoriteMovie="奪魂鋸"},
                                        new Person(){Name="Ken",Age=20, FavoriteMovie="Cars"},
                                        new Person(){Name="Allen",Age=20, FavoriteMovie="PI"}
                                    };
        }
    }
    public class Person
    {
        public string Name { set; get; }
        public int Age { set; get; }
        public string FavoriteMovie { set; get; }
    }
}
