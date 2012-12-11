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
using System.Threading;
using System.Windows.Threading;

namespace W33_ThreadLoadImage
{
    /// <summary>
    /// MainWindow.xaml 的互動邏輯
    /// </summary>
    public partial class MainWindow : Window
    {
        private const string _apiThumb = "http://192.168.100.177:2121/thumb?p=";
        public MainWindow()
        {
            InitializeComponent();
            string path = String.Format(@"{0}{1}", _apiThumb, "/Nonwoven/TUC/Taiwan/1/Installation Gallery/001.jpg");
            ThreadPool.QueueUserWorkItem(LoadImage,new Uri(path));
        }
        public void LoadImage(object uri)
        {
            var decoder = new JpegBitmapDecoder(new Uri(uri.ToString()), BitmapCreateOptions.PreservePixelFormat, BitmapCacheOption.OnLoad);
            decoder.Frames[0].Freeze();
            this.Dispatcher.Invoke(DispatcherPriority.Send, new Action<ImageSource>(SetImage), decoder.Frames[0]);
        }

        public void SetImage(ImageSource source)
        {
            image1.Source = source;
        }
    }
}
