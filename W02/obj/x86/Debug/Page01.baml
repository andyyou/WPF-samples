   M S B A M L   `   `   `  ����  W02    
W02.Page01   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5        N� Title$
  Page��5       � 	Resources 5	       
  mBrush �� Color �� 
TargetType �� Property �� Value �� 
StartPoint �� EndPoint � Offset	 � Color
 �� Triggers P� Property P� Value �� 
TargetType  mPhotos  PhotoTemplate �� Orientation �� XPath��%  &	        '��      '�� �    &	 �    &	     �� 5
   
   $ Green��6)   �� 5   
   " ��6   .�5      ��  � ��$ Center=�64   �� 5       � ��$ Meiryo)�6+   �� 5       � ��$ 30(�6)   �� 5       � �� 5      �� 5      $ 0.5,0&�6*   $ 0.5,1&�6=   .��5      � $	 0.0Q�6'   $		 Red��64   � 5      $	 1.0Q�6'   $	 Yellow��64   5      5      
 5      P� 5       �@J�IsMouseOver . . �5      ��  � ��$ 20(�61   6>   5      5      �� 5   
   " ��6   .�5      ��  �@�OverridesDefaultStyle . 66   �� 5       � �� 5       �� 5!      " ��6&   .R�5"      � .+�5#      A� 
��� � �6&   �� 5$      $��Center=�6/   $��Center=�5%   /   5&      5'      5)      5*      � 5+   
   .��5,      ��<Inventory xmlns="">
                    <Photos>
                        <Photo>
                            <Title>CityNight</Title>
                            <FileName>Media/CityNight.jpg</FileName>
                        </Photo>
                        <Photo>
                            <Title>CityMorning</Title>
                            <FileName>Media/CityMorning.jpg</FileName>
                        </Photo>
                    </Photos>
                </Inventory>        5:      �� 5;   
   .R�5<      �� $ Vertical=�6   .+�5=      �� $��10(�6   
��� � ���5>      �� $ Title���� 5?      $	��200��6:   ��6   �� $ FileName��6:   5@      5A      5B      .��5C      �� .��5E   
   �� $	��600��6   $	��800��6!   $ Vertical=�6.   $��35q�6E    �� ScrollOwner 5F   
   �� 5G      ��. 6   .+�5I   
   �� .��6   請輸入您的稱呼:6   �� 5J   
   -   5         ��Name$ MyInput��5J      6%   �� 5K   
   .��6   您的稱呼是:6   �� 5L   
   $��30q�6D   ��6   ��  �� ElementName$ MyInput�� �� Path$
 Text�6D   �� 5M   
   $	��200��6   $	��100��6   $��按鈕��6*   �� 5N   
   #��[ 5O      
�������$	��400��5P   &   $	��400��62   $��10q�6?   ��5N      ��  �� Source# [ $ /Inventory/Photos/Photo��5P   ?   5R      5S      5T      