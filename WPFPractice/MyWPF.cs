using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;

namespace WPFPractice
{
    public class MyWPF:Window
    {
        [STAThread]
        public static void Main()
        {
            Application app = new Application();
            app.Run(new MyWPF());
        }

        public MyWPF()
        {
            this.Title = "This is WPF";
            Button btn = new Button();
            btn.Content = "Click";
            btn.Width = 200.0;
            btn.Height = 25.0;
            this.Content = btn;
        }
    }
}
