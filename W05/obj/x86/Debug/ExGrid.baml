   M S B A M L   `   `   `  ����  W05    
W05.ExGrid   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  ExGrid��5   	   $	��300��6   $	��700��6%   .��5      � $	��600��6   $	��200��6    � ShowGridLines .  � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5	      $
��Auto �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��2* �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��0��6$   
���  ��$��10q�6<   �� 5   
   $��1��6   $��0��6$   31這個儲存格的寬度會隨內容大小變動.5      �� 5   
   $��0��6   $��1��6$   $��2��61   $
��Wrap=�6E   ��由於另外兩個儲存格的高度指定為[*] 這個儲存格的高度為[2*]的關係,所以這個儲存格的高度為全部 的1/2. 又因為指定了 ColumnSpan = 2 所以內容會橫跨兩欄.5      �� 5   
   $��0��6   $��2��6$   $
��Wrap=�61   &$這個儲存格高度為全部的1/45      �� 5   
   $��2��6   $��	8,8,12,12q�6   $��2��61   .��6A   OK6E   5      5      