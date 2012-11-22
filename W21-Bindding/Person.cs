using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;

namespace W21_Bindding
{
    class Person : INotifyPropertyChanged
    {
        string name;
        public string OriginName = "Andy";
        public string Name { 
            get { return name; }
            set {
                name = value;
                
            }
        }
        public Person()
        {
            this.Name = OriginName;
        }

        public event PropertyChangedEventHandler PropertyChanged;
        void Notify(string propName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(propName));
        }




    }
}
