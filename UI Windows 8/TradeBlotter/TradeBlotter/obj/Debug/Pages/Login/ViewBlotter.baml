   M S B A M L   `   `   `  ����  TradeBlotter*    $TradeBlotter.Pages.Login.ViewBlotter   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Z VFirstFloor.ModernUI, Version=1.0.9.0, Culture=neutral, PublicKeyToken=bc9b0c37bf06c6a90mui&http://firstfloorsoftware.com/ModernUI  5      .��5	      �    ContentRoot#��[  6   .+�5   
   �� -   5          ��Name$  label��5      $��Trade Information��6    $��15(�6<   $��Center=�6J   $��	82,0,72,0q�6g   �� 5   
   -   5         ��Name$ 
btnrefresh��5      $��Refresh��6%   $��148,28,0,206q�68   $	��120��6O   $��22��6[   6g   �� 5   
   -   5        $ 	btnSearch��5      $��Search��6$   $��157,31,51,200q�66   $��25��6N   $��60��6Z   6e   �� 5   
   -   5         ��Name$ 	txtSearch��5      $��30��6%   $��0,26,118,200q�61    �� TextWrapping$
 Wrap=�6G   $�� ��6[   $	��150��6c   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGrid��5      $��Stretch=�6%   $��
0,64,0,101q�6C   $
��auto��6W      AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 Side��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   �� 	 �� Path$
	 side�  5      $ Time Updated��6%    6;   �� $	 
timeUpdate�  5      $ Trade Status��6%    6;   �� $	 tradeStatus�  5      $ Product Name��6%    6;   �� $	 product�  5      $ Quantity��6%    67   �� $		 qty�  5      $ Price��6%    64   �� $	 price�  5      $
 Firm��6%    63   �� $
	 firm�5      �� 5   
   -   5        $  label2��5      $��Sort by:��6    $
��Left=�63   $��
316,26,0,0q�6N   $	��Top=�6b   $��58��6z   $��24��6�   � 5   
   $
��Left=�6   $��27��6/   $��
379,26,0,0q�6;   $	��Top=�6O   $	��165��6g   .+�5      �� -   5        
 ��Name$
 cmbSort��5      $
��Left=�6(   $	��Top=�6C   $��80��6[   .@�5       �� $��price��6   �� 5!      $��timeUpdated��6   �� 5"      $��product��6   �� 5#      $	��qty��6   5$      �� 5%      -   5        $ txtQuantity��5%      $
��Left=�6+   $��23��6F   $
 Wrap=�6R   $�� ��6f   $	��Top=�6n   $��49��6�   5&      �� 5(   
   -	   5        $ btnSort��5(      $
��Sort��6"   $
��Left=�61   $��
544,26,0,0q�6L   $	��Top=�6`   $��75��6x   6�   �� 5*   
   -
   5         ��Name$ chkAutoRefresh��5*      $��Auto Refresh��6+   $��
646,45,0,0q�6C   �� 5+   
   -   5        $ btnGetNotes��5+      $��Get you notes��6&   $��232,300,0,0q�6?   $
��auto��6U   6b   �� 5,   
   -   5        $ txtComments��5,      $��Stretch=�6'   $	��101��6E   $��40,329,29,0q�6R   $
 Wrap=�6g   $�� ��6{   $	��Top=�6�   $	��691��6�   �� 5-   
   -   5        $  label1��5-      $/��)Type your text here(Max. 200 characters):��6    $
��Left=�6T   $��	0,298,0,0q�6o   $	��Top=�6�   �� 5.   
   -   5        $ button��5.      $
��Save��6!   $
��Left=�60   $��
40,441,0,0q�6K   $	��Top=�6_   $��75��6w   6�   52      53      