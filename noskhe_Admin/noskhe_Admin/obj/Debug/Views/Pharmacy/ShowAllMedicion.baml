   M S B A M L   `   `   `  ����G  Cnoskhe_Admin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:noskhe_Admin.Views.Pharmacynoskhe_Admin.Views.Pharmacy  5      1    +noskhe_Admin.Views.Pharmacy.ShowAllMedicion   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      V RMaterialDesignThemes.Wpf, Version=2.4.1.1101, Culture=neutral, PublicKeyToken=nullFmaterialdesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      5local)clr-namespace:noskhe_Admin.Views.Pharmacy  5      .��5      �   � RowDefinitions  5   
   �� 5      $��1* �6   �� 5      $	��15* �6   �� 5      $��1* �6   .+�5   
   �� 
�������$��3��6!    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 20Q�6#      Color$ 	#FFC9C5C5��63      ShadowDepth$ 1Q�6E   5      � 5   
   $��1��6   .+�5      �� $��0��6   $��Center=�6$   $��General Data��6A   $	��836��6X   .��5      �� .��5      �� -   5         ��Name$ Xpanel��5   K   $��	10 0 0 40q�6!    �� Orientation$ Vertical=�64   .+�5      � $��1��6   $��10 0 0 0q�6,     5      �� 5   "   $	��10* �60   �� 5   "   $��1* �60    � ColumnDefinitions 5!      �� 5"   "   $��4* �63   �� 5#   "   $��5* �63   �� 5$   "   $��7* �63   �� 5%   "   $��2* �63   .+�5'      �� $��Center=�6)   $��Center=�6D   $��0��6a   $��0��6q   .+�5(   "   �� $
��Type��6,   
�������$��
UltraBlack"�6J   $��11(�6b   5)      �� 5*      $��Center=�6)   $ 
Horizontal=�6D   $��Center=�6]   $��1��6z   $��0��6�   .+�5+   "   �� $��(تومان)��6,   
�������$��
UltraBlack"�6M   $��8(�6e   $��Center=�6r   �� 5,   "   $��قیمت��6,   
�������$��
UltraBlack"�6J   $��11(�6b   $��Center=�6p   5-      �� 5.      $��Center=�6)   $��Center=�6D   $��2��6a   $��0��6q   .+�5/   "   �� $��نام دارو��6,   
�������$��
UltraBlack"�6N   $��11(�6f   50      �� 51      $ 
Horizontal=�6)   $��Center=�6B   $��Center=�6]   $��3��6z   $��0��6�   .+�52   "   �� $��ردیف��6,   
�������$��
UltraBlack"�6J   $��11(�6b   $��Center=�6p   53      �� 54      $	��0 5q�6(   $��4��65   $��1��6I   55      57      58      59      �� 5:      -   5        $��Search��5:      $��Bottom=�6&   $��400 0 400 10q�6V   5;      5=      5>      