   M S B A M L   `   `   `  ����M  IListViewCustomView, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ListViewCustomViewListViewCustomView  5      #    ListViewCustomView.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   .l clr-namespace:ListViewCustomView     5        � Title$  Custom View��5   	   $	��400��5      $	��500��6    � 	Resources 5	         centralTile �� XPath  iconTemplate  checkbox d� 	IsChecked �� RelativeSource �� AncestorType  myXmlDataBase � XPath  DisplayImage  gridView �� CellTemplate �� DisplayMemberBinding"   ListViewCustomView.PlainView  tileView	   ItemTemplate
   	ItemWidth  iconView,   &ListViewCustomView.OneButtonHeaderView  OneButtonHeaderView��%=  &	        &	 �    &	 #    &	 �    &	 2    &	 �    7  7  &	 t    7   &	 �    7  &	 �    �� 5
      .R�5   
   �� $	��100��6   $��90��6"   .+�5      � $��70��6   $��70��6   $��Center=�6(   .+�5      �� $��6,6,6,9q�64   ��6   �� $ @Image��64   5      �� 5      $��13(�63   $��Center=�5      $��0,0,0,1q�63   ��5      �� $ @Name��5   3   �� 5      $��9(�63   $��Center=�5      $��0,0,0,1q�63   ��5      �� $ @Type��5   3   5      5   	   �� 5      .R�5   
   ]� $��33��6   $	��150��6    .+�5      �� $��2q�62   ��6   �� $ @Image��62   �� 5      $	��Top=�6   $��13(�5      $
��Left=�6$   $��0,0,0,1q�5      ��5   +   �� $ @Name��5      �� 5      $��9(�63   $
��Left=�5      $��0,0,0,1q�61   ��5      �� $ @Type��5   1   5      5   	   �� 5       .R�5!   
   �� $��0,1,1,1q�5$       5!      �� *
IsSelected+ �� $ ListViewItemL�5&      5'   	   � 5)      $ 
/myXmlData��6.   .��5*   
   ��<myXmlData xmlns="">
            <Item Name="Fish" Type="fish" Image="images\fish.png" />
            <Item Name="Dog" Type="animal" Image="images\dog.png" />
            <Item Name="Flower" Type="plant" Image="images\flower.jpg" />
            <Item Name="Cat" Type="animal" Image="images\cat.png" />
          </myXmlData>        52   	   �� 54      .R�55   
   �� $��50��6   .+�56      �� ��6   �� $ @Image��57      58   	   �� 5:      .P�5;   
   �� 8   6   �� 5<   
   $
��Name��6    5=      �� $ @Name���� 5>   
   $
��Type��6    5?      �� $ @Type���� 5@   
   $��Image��6   8  5A      5B   	     5D      8	   $	
 100Q�5F        5I      8	   $	
 150Q�5K        5L      6   5M      .��5N      �� .+�5O      �� -   5        $��lv��5O      $��12(�5R      
����ح���5P      ��  �� Source# [ $
 Item�� � ContextMenu 5T      �� 5U   
   .@�5V      m� -   5        $��GridView��5V      6'   m� 5W      -   5        $��IconView��5W      6'   m� 5X      -   5        $��TileView��5X      6'   m� 5Y      -   5        $��OneButtonHeaderView��5Y      62   5Z      5^      �� 5_      $��16(�6   
����  �CurrentView: �� 5`      -   5        $��currentView��5`      5a      �� 5b      75Right-click in the content window to change the view.5d   	   5f      5g      