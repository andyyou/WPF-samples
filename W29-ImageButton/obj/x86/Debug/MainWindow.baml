   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=0.9.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5       W29-ImageButton    W29_ImageButton.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5      $	��600��5      $	��800��5	      $��Microsoft JhengHei)�5
        � 	Resources  5       �� MergedDictionaries �� Source 	  image ��Name �� Triggers �� Value �� Binding �� Path �� 
TargetName	 �� Property
 �� Value  MyListViewStyle �� 
TargetType �� Triggers �� ElementName �� 
TargetType�� 5   
    5      �� 5      $ Resources/Icons.xaml?�6%   �� 5      $H Bpack://application:,,,/MahApps.Metro;component/Styles/Colours.xaml?�6%   �� 5      $F @pack://application:,,,/MahApps.Metro;component/Styles/Fonts.xaml?�6%   �� 5      $I Cpack://application:,,,/MahApps.Metro;component/Styles/Controls.xaml?�6%   �� 5      $M Gpack://application:,,,/MahApps.Metro;component/Styles/Accents/Blue.xaml?�6%   �� 5      $R Lpack://application:,,,/MahApps.Metro;component/Styles/Accents/BaseLight.xaml?�6%   %m  &	        &	 c    �� 5      .R�5      �� $ TheImage��6    5      �� 5      $
 true��6B    6"   �� $ IsTrue�.a�5      �� $ TheImage��6!   	 � ��$
 Images/computer.png��6I   5      �� 5      $ false��6B    6"   �� $ IsTrue�.a�5      �� $ TheImage��6!   	 � ��$
 Images/error.png��6I   5      5       �� 5!      " ��6,    5"      �� 5#       6"   �� $ togShowMode��$ 	IsChecked� True6^   .a�5%      �� 	 � ��
 �#ffffff67   �� 5&      	 � ��$

 Left=�6G   �� 5'      	 � ��$
 Center=�6E   �� 5(      	 � ��

 � � �67   5)      �� 5*       6"   �� $ togShowMode��$ 	IsChecked�	 False6^   .a�5,      �� 	 � ��
 �#00ff0067   �� 5-      	 � ��$

 Left=�6G   �� 5.      	 � ��$
 Center=�6E   �� 5/      	 � ��

 �   �67   �� 50      	 � ��
 51      �� 52   "   " ��62   .R�53   &   �� $��Border��6-   $��4q�6;   ���#999999���#DFDFDF._�54   *   �� #��� $�67   .��55   .   �� 56   +   57   '   58   #   5:      5;      5A      5C      .��5F      � .+�5G   
   �� -   5        $
��btn1��5G      $��50��5H      $��50��5I      $��12,12,716,499q�5J        
appbar_eye#��[ 5K        MetroCircleButtonStyle#���  5L      $��Microsoft JhengHei)�5M      61   �� 5N   
   -   5        $
��btn2��5N      $��50��5O      $��50��5P      $��68,12,660,500q�5Q        appbar_list_two#��[ 5R      #���  5S      $��Microsoft JhengHei)�5T      �� 5V   
   -   5         ��Name$ 	listView1��5V      $��Center=�6&   $��12,102,172,120q�6J   #��[ 6z   ��6b   ��  �� View 5X      �� 5Y      .P�5Z      �� $��Image��6%    �� CellTemplate# [  64   �� 5[      $��Active��6%    �� DisplayMemberBinding 65   �� $ IsTrue��� 5\      $
��Name��6%    �� Width$	 100��6^    63   �� $
 Name�6^   5]      5`      )   #MahApps.Metro.Controls.ToggleSwitch  5a   
   -   5        $��togShowMode��5a       $	��100��5b       $��70��5c       $��124,12,554,480q�5d          Header$ 模式��5e          OnLabel$ 列表��5f          OffLabel$ 圖示��5g       $��Microsoft JhengHei)�5h       5i      5k      