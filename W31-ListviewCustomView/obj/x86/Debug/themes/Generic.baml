   M S B A M L   `   `   `  ����M  IListViewCustomView, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ListViewCustomViewListViewCustomView  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� 
TargetType �� BasedOn �� TypeInTargetAssembly"    ListViewCustomView.PlainView �� 
ResourceId �� Property �� Value �� RelativeSource �� AncestorType � 	ItemWidth	 � 
ItemHeight,   &ListViewCustomView.OneButtonHeaderView
 �� 
TargetType �� Padding �� CornerRadius �� Orientation � RowDefinitions � ColumnDefinitions �� Padding �� XPath �� TextAlignment �� Triggers P� Property P� Value �� 
TargetName�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      &l clr-namespace:ListViewCustomView  5      %�	  (��       5   
   "   $ myPlainViewDSK��)7��(�� �    5&   
   "  $ OneButtonHeaderViewDSK��)(�� e    5B   
   "  $  OneButtonHeaderViewItemDSK��)�� 5      "  ��5
   
   8   .�5      ��  � ��$ Center=�5      �� 5       � �� 5      �� *$"(ListView.View).ItemContainerStyle+ �� *Self+�� 5       � �� 5      �� *(ListView.View).ItemTemplate+ �� *Self+�� 5       � �� 5      �� 5   
   .R�5      � ��6   �� * (FrameworkElement.ActualWidth)+ �� $ ScrollContentPresenterL� 5      �� *(ListView.View).ItemWidth+ �� $ ListViewL���5      �� *(ListView.View).ItemWidth+ �� $ ListViewL�	 5      �� *(ListView.View).ItemHeight+ �� $ ListViewL�5!      5#      5$      �� 5&      "  ��5)   	   .�5*      ��  � ��$	 310��6   �� 5+       � ��$ Hidden=�5,      �� 5-       � �� 5.      �� 5/   
   "
 ��6   .R�50      �� #��z��6   #��z��51      #��z��52      # z��53      ._�54      �� .+�55      �� $��BannerButton��6   $��Refresh��56      #��z��57      �� 58      �� 59      $ 2��6   #��z��5:      $��4��67   5;      5<      5=      5?      5@      �� 5B      "  ��5E   
   .�5F      ��  � ��
 ���� 6#   �� 5G       � ��$ Center=�63   �� 5H       � ��$ Center=�61   �� 5I       � ��$ 0q�6    �� 5J       � ��$ 0,1,0,0q�6   �� 5K       � �� 5L      �� 5M   
   "
 ��6   .R�5N      �� $��bd��6   #��z��6   $��2,0,2,0q�5O      ._�5P      �� $ 
Horizontal=�6   .+�5Q      � $	��250��6   $��4,0,0,0q�6!    5R      �� 5S      �� 5T       5V      �� 5W      �� 5X      .+�5Z      �� $	��tb1��6   $��0��5[      $��0��6)   $��13(�5\      $ 2,0,0,0q�6*   ��5Z   '   �� $ @Name��5\   *   �� 5]      $��1��6   $��0��6)   $��13(�5^      
����  ��� 5_      Type: �� 5`      ��6(   �� $ @Type��5a      5b      �� 5c      $��0��5d      $��2��6'   $��2��5e      $��40��5f      $��40��6%   ��5c      �� $ @Image��5f   %   5g      �� 5h      $ 0,5,0,0q�6   $��50��6,   $��28��67   $ Center=�5i      $��Center=�61   $��13(�5j      5k      5l       5m      P� 5n       �@J�IsMouseOver . . �5o      �� $ bd��6<    � ��
 � ���5p      5r      5t      5u      5w      