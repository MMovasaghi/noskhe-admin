   M S B A M L   `   `   `  ����G  Cnoskhe_Admin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:noskhe_Adminnoskhe_Admin  5   	       noskhe_Admin.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   V RMaterialDesignThemes.Wpf, Version=2.4.1.1101, Culture=neutral, PublicKeyToken=nullFmaterialdesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   &localclr-namespace:noskhe_Admin  5   	     � Title$   Noskhe-Administrator��5	   	   $	��700��6'   $
��1200��64   $	��700��6A   $
��1200��6R   
������� � WindowStartupLocation$ CenterScreen=�6y    � 	Resources 5
         MenuOpen �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	MenuClose��%�  &	        &	 �     �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $ 60Q�63     5      $ 0:0:0.5��6'   $	 200Q�69   5      5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $	 200Q�63     5      $ 0:0:0.5��6'   $ 60Q�69   5      5      5       � Triggers 5      :� 5   
    :� RoutedEvent$ ButtonBase.Click��6   	 :� 
SourceName$	 ButtonOpenMenu��66   .[�5      �� #��[  6   5      :� 5   
   $ ButtonBase.Click��6   $	 ButtonCloseMenu��66   .[�5      �� #��[ 6   5      .��5"      � 
 � RowDefinitions
 5#   
   �� 5$      $
��600* �6   �� 5%      $	��20* �6   .+�5'   
   � -   5         �Name$ MainGrid��5'      $y�Visible=�6!   $��0��66   
 5(      �� 5)      $	��60* �6    �� 5*      $
��600* �6     � ColumnDefinitions 5,      �� 5-      �� 5.      $	��19* �6#   .+�50      � $��0��6   $��0��6    $��2��60   $��60��6D   $	��Top=�6P   ���	#FF364CCD.+�51      �� -   5         ��Name$ 	TitleTEXT��51      
�������$��Administrator��6B   $��IRANSans Medium)�6W   $��Center=�6t   $��Center=�6�   $��22(�6�   $
��Bold"�6�   �� 53      $��Center=�6   $��Right=�68    �� Orientation$ 
Horizontal=�6T   .+�54      '  !MaterialDesignThemes.Wpf.PopupBox  $��10q�6/   
�������   PlacementMode$ BottomAndAlignRightEdges=�6N      	StaysOpen .     PopupContent. 55      �� $	��150��6%   .+�56      �� $��Profile��6%   �� 57      $��Settings��6%   �� 58      $
��Help��6%   �� 59      �� 5:      -   5         ��Name$ logoutButton��5:   %   $��Log Out��6;   6M   5;      5<      5=      5>      � 5A      $��1��6   $��1��6$   .+�5B      � -   5        $ ShowGridView��5B      $��30q�6-   5C      � 5F      -   5        $ GridMenu��5F      $��0��6%   $��0��65   $��60��6B   $
��Left=�6M   ���	#FF5365A6$��2��6   $��2��6�   $��
0,0,0,-0.4q�6�   .+�5G      �� .+�5I      � $	��150��6   
�������.+�5K      �� -   5        $ ButtonCloseMenu��5K   !   $��60��6:   $��60��6E   $	��Top=�6~   $��Right=�6�   $y�	Collapsed=�6�   ��6Q   Z� ��6g   Z� .��5L      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.1.1101, Culture=neutral, PublicKeyToken=null]]   Kind$ 	ArrowLeft=�66   ���	#FF5743B0$��25��6^   $��25��6i   5M      �� 5O      -   5        $ ButtonOpenMenu��5O   !   $��60��69   $��60��6D   $	��Top=�6}   $��Right=�6�   ��6P   Z� ��6f   Z� .��5P        $
 Menu=�66   ���	#FF5743B0$��25��6Y   $��25��6d   5Q      5R      �� 5U      $��Disabled=�6    ���	#FFD7D2D2��6m   Z� ��6�   Z� .@�5W      �� -   5         ��Name$ AllPharmacyMenuButton��5W   '   $��60��6F   .��5X      �� $ 
Horizontal=�6)   .+�5Y   "     $ Pharmacy=�6:   $��25��6J   $��10q�6U   $��25��6a   $��Center=�6m   �� 5Z   "   $��All Pharmacis��6,   $��15(�6B   $��Center=�6P   $��20 10q�6k   $��IRANSans)�6z   5[      5\      �� 5^      -	   5        $ NewPharmacyMenuButton��5^   '   $��60��6F   .��5_      �� $ 
Horizontal=�6)   .+�5`   "     $ AccountPlus=�6:   $��25��6M   $��10q�6X   $��25��6d   $��Center=�6p   �� 5a   "   $��New Pharmacy��6,   $��IRANSans)�6@   $��15(�6V   $��Center=�6d   $��20 10q�6   5b      5c      �� 5e      -
   5        $ AddMedicionButton��5e   '   $��60��6B   .��5f      �� $ 
Horizontal=�6)   .+�5g   "     $ 	OpenInNew=�6:   $��25��6K   $��10q�6V   $��25��6b   $��Center=�6n   �� 5h   "   $��Add Medicion��6,   $��15(�6@   $��Center=�6N   $��20 10q�6i   5i      5j      �� 5l      -   5        $ AllMedicion��5l   '   $��60��6<   .��5m      �� $ 
Horizontal=�6)   .+�5n   "     $ AccountMultiple=�6:   $��25��6Q   $��10q�6\   $��25��6h   $��Center=�6t   �� 5o   "   $��	All Users��6,   $��15(�6=   $��Center=�6K   $��20 10q�6f   5p      5q      �� 5s      -   5        $ AddUserMenuButton��5s   '   $��60��6B   .��5t      �� $ 
Horizontal=�6)   .+�5u   "     $ AccountMultiplePlus=�6:   $��25��6U   $��10q�6`   $��25��6l   $��Center=�6x   �� 5v   "   $��Add User��6,   $��15(�6<   $��Center=�6J   $��20 10q�6e   5w      5x      �� 5z      -   5        $ EditUserButton��5z   '   $��60��6?   .��5{      �� $ 
Horizontal=�6)   .+�5|   "     $ AccountEdit=�6:   $��25��6M   $��10q�6X   $��25��6d   $��Center=�6p   �� 5}   "   $��	Edit User��6,   $��IRANSans)�6=   $��15(�6S   $��Center=�6a   $��20 10q�6|   5~      5      5�      5�      5�      5�      � 5�   
   -   5        $ 	LoginGrid��5�      $y�Hidden=�6"   $��0��66   .+�5�      �� $ Vertical=�6   $��Center=�60   $��Center=�6M   .+�5�      �� $��Sign In Page��6   $��40(�60   $
��Bold"�6>   $��Center=�6P   $��0 0 0 90q�6m   �� 5�      $ 
Horizontal=�6   $��20q�66   .+�5�      �� $��Username : ��6    $��20(�63   $��0 5 20 0q�6A   �� 5�      -   5         ��Name$ Username��5�      $	��400��60    �� TextAlignment$ Center=�6<   $��18(�6S   $��0 0 0 5q�6a   5�      �� 5�      $ 
Horizontal=�6   $��Center=�66   $��20q�6S   .+�5�      �� $��Password : ��6    $��20(�63   $��0 5 26 0q�6A   G� 5�      -   5         G�Name$ Password��5�   "   $	��400��64    �� TextAlignment$ Center=�6@   $��18(�6a   $��0 0 0 5q�6o   5�      �� 5�      -   5        $ SignInButton��5�      $��Sign in��6/   $��16(�6A   $	��200��6O   $��50��6[   $��Right=�6g   $��30q�6�   6�   5�      5�      � 5�   
   -   5        $ 	BottonBar��5�      $��1��6"   ���	#FF007ACC.+�5�      �� 
�������$H��B© Copyright       Noskhe Team - Desktop Administrator Application��6+   $
��Left=�6t   $��Center=�6�   $��10 0 0 0q�6�   5�      5�      5�      