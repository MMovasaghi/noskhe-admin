   M S B A M L   `   `   `  ����G  Cnoskhe_Admin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullc6clr-namespace:noskhe_Admin.Views.Pharmacy.AllPharmacys(noskhe_Admin.Views.Pharmacy.AllPharmacys  5      :    4noskhe_Admin.Views.Pharmacy.AllPharmacys.AllPharmacy   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      V RMaterialDesignThemes.Wpf, Version=2.4.1.1101, Culture=neutral, PublicKeyToken=nullFmaterialdesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      Blocal6clr-namespace:noskhe_Admin.Views.Pharmacy.AllPharmacys  5      .��5      �   � RowDefinitions  5   
   �� 5      $��1* �6   �� 5      $��4* �6   .+�5   
   �� 
�������$��2��6!    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 20Q�6#      Color$ 	#FFC9C5C5��63      ShadowDepth$ 1Q�6E   5      � 5   
   $��0��6   .+�5      �� -   5        $��Center=�5      $
��Left=�64   $��	40 0 0 10q�6O    � Cursor$
 Hand��6b   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.1.1101, Culture=neutral, PublicKeyToken=null]]   Kind$ Reload=�6*   $��40��68   $��40��6D   
���   �6O   5      �� 5       �� Orientation$ 
Horizontal=�6   $��Right=�62   $��Center=�6N   $��	50 0 50 0q�6i   .+�5      �� $��Find User : ��6   $��20(�60   
�������$��0 5 20 0q�6P   �� 5      -   5         ��Name$ SearchContent��5   1   	 �� TextAlignment$	 Center=�6   $	��300��6H   $��0 0 0 0q�6T   )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Username��6e   $��20(�6�   
�������6�   5      5      � 5   
   $��1��6   $��
20 0 20 20q�6   .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ 	XDataGrid��5         AutoGenerateColumns .    
IsReadOnly . 
���   �$��RightToLeft=�6�   $��IRANSans)�6�   ��6E   ��  �� Path$$ AllPharmacyVM.AllPharmacyModel�6�   5       5!      5"      