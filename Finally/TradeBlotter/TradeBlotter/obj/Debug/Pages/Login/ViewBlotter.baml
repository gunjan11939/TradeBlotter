   M S B A M L   `   `   `  ����  TradeBlotter*    $TradeBlotter.Pages.Login.ViewBlotter   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Z VFirstFloor.ModernUI, Version=1.0.9.0, Culture=neutral, PublicKeyToken=bc9b0c37bf06c6a90mui&http://firstfloorsoftware.com/ModernUI  5      $	��781��5      $	��599��6+   .��5      �    ContentRoot#��[  6   .+�5
   
   �� -   5          ��Name$  label��5
      $��Trade Information��6    $��15(�6<   $��Center=�6J   $��322,0,280,529q�6g   $	��147��6~   �� 5   
   -   5         ��Name$ 
btnrefresh��5      $��Refresh��6%   $��25��67   $��566,64,91,466q�6C   6Z   �� 5   
   -   5        $ 	btnSearch��5      $��Search��6$   $��25��65   $��1,56,667,474q�6A   6W   �� 5   
   -   5         ��Name$ 	txtSearch��5      $��1,26,597,504q�6%    �� TextWrapping$
 Wrap=�6;   $��25��6O   $�� ��6[   6c   �� 5   
   -   5        $ btnSort��5      $
��Sort��6"   $��272,56,399,0q�61   $	��Top=�6G   $��25��6l   �� 5   
   -   5         ��Name$ chkAutoRefresh��5      $��Auto Refresh��6+   $��566,26,86,507q�6C    J� RenderTransformOrigin$ 0.5,0.5&�6Z   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGrid��5      $��1,114,0,180q�6&      
IsReadOnly . $��Stretch=�6N   $	��226��6l      AutoGenerateColumns .  	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$

 Side��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   ��  �� Path$
 side�  5      $
 Time Updated��6%    6;   �� $ 
timeUpdate�  5      $
 Trade Status��6%    6;   �� $ tradeStatus�  5      $
 Product Name��6%    6;   �� $ product�  5      $
 Quantity��6%    67   �� $	 qty�  5      $
 Price��6%    64   �� $ price�  5      $

 Firm��6%    63   �� $
 firm�50      �� 52   
   -   5        $  label2��52      $��Sort by:��6    $
��Left=�63   $��
221,26,0,0q�6N   $	��Top=�6b   $��46��6z   $��17��6�   � 53   
   $
��Left=�6   $��27��6/   $��
272,26,0,0q�6;   $	��Top=�6O   $	��174��6g   .+�54      �� -	   5         ��Name$ cmbSort��54      $
��Left=�6(   $	��Top=�6C   $��79��6[   .@�55      �� $��price��6   �� 56      $��timeUpdated��6   �� 57      $��product��6   �� 58      $	��qty��6   59      �� 5:      -
   5        $ txtQuantity��5:      $
��Left=�6+   $��23��6F   $
 Wrap=�6R   $�� ��6f   $	��Top=�6n   $��71��6�   5;      �� 5=   
   -   5        $ btnGetNotes��5=      $��Get your notes��6&   $��502,520,125,10q�6@   $��25��6X   $
��auto��6d   $ 	0.5,0.544&�6�   5>      �� 5?   
   -   5        $ txtComments��5?      $��Stretch=�6'   $��97��6E   $��	0,404,0,0q�6Q   $
 Wrap=�6d   $�� ��6x   $	��Top=�6�   �� 5@   
   -   5        $  label1��5@      $/��)Type your text here(Max. 200 characters):��6    $
��Left=�6T   $��
10,380,0,0q�6o   $	��Top=�6�   $��20��6�   $ 0.5,0.5&�6�   5B      �� 5C   
   -   5        $ button��5C      $
��Save��6!   $
��Left=�60   $��653,520,0,0q�6K   $	��Top=�6`   $��68��6x   $��25��6�   $ 0.5,0.5&�6�   5E      �� 5F   
   -   5        $ button1��5F      $��Export��6"   $
��Left=�63   $��	7,520,0,0q�6N   $	��Top=�6a   $��98��6y   $ 0.253,0.615&�6�   $��25��6�   6�   �� 5G   
   -   5        $ ClearButton��5G      $��Clear Notes��6&   $
��Left=�6<   $��25��6W   $��364,520,0,0q�6c   $	��Top=�6x   $	��120��6�   6�   5I      5J      