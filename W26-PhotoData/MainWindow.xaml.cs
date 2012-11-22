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
using System.IO;

namespace W26_PhotoData
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

        private void btn_Click(object sender, RoutedEventArgs e)
        {
            FileStream stream = new FileStream("../../Images/FirstStarbucks.jpg", FileMode.Open);
            JpegBitmapDecoder decoder = new JpegBitmapDecoder(stream, BitmapCreateOptions.PreservePixelFormat, BitmapCacheOption.Default);
            BitmapSource bitmapSource = decoder.Frames[0];
            mImage.Source = bitmapSource;
            BitmapFrame bmf = BitmapFrame.Create(bitmapSource);
            BitmapMetadata mMetadata = bmf.Metadata as BitmapMetadata;
            mCamera.Content = "照相機: " + mMetadata.CameraModel;
            mData.Content = "拍攝時間: " + mMetadata.DateTaken;
            mISO.Content = "ISO速度: " + mMetadata.GetQuery("/app1/ifd/exif/subifd:{uint=34855}").ToString();
            
        }
    }
}
