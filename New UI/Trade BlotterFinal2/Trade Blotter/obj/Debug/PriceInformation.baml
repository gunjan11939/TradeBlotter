   M S B A M L   `   `   `  ����H  DTrade Blotter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Trade_BlotterTrade_Blotter  5   	   $    Trade_Blotter.PriceInformation   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Trade_Blotter     5   	     � Title$  Price Information��5   	   $
��auto��6#   $
��auto��61   $��Stretch=�6>   $��Stretch=�6\   .��5	      � $��0,0,0,-1q�6   .+�5   
   �� -   5         ��Name$ label��5      $��Pricing Information��6    $��15(�6>   $��Center=�6L   $��	82,0,72,0q�6i   $	��Top=�6|   �� 5   
   -   5         ��Name$ txtComments��5      $��Stretch=�6'   $	��101��6E   $��40,329,29,0q�6R    �� TextWrapping$
 Wrap=�6g   $�� ��6{   $��Stretch=�6�   $
��auto��6�   �� 5   
   -   5        $ label1��5      $/��)Type your text here(Max. 200 characters):��6    $
��Left=�6T   $��	0,298,0,0q�6o   $	��Top=�6�   �� 5   
   -   5         ��Name$ button��5      $
��Save��6!   $
��Left=�60   $��
40,441,0,0q�6K   $	��Top=�6_   $��75��6w   6�   �� 5   
   -   5         ��Name$ chkBuy��5      $	��Buy��6#   $
��Left=�61   $��9,34,0,0q�6L   $	��Top=�6^   �� 5   
   -   5        $ chkSell��5      $
��Sell��6$   $
��Left=�63   $��	50,34,0,0q�6N   $	��Top=�6a   �� 5   
   -   5        $ 
btnrefresh��5      $��Refresh��6%   $
��Left=�67   $��
646,18,0,0q�6R   $	��Top=�6f   $��64��6~   $��22��6�    J� RenderTransformOrigin$ 2.378,-0.091&�6�   �� 5   
   -   5        $ 	btnSearch��5      $��Search��6$   $
��Left=�65   $��	92,30,0,0q�6P   $	��Top=�6c   $��76��6{   6�   &   System.Windows.Controls.DataGrid  5   
   -	   5          Name$ dataGrid��5      $��Stretch=�6%   $��
40,67,29,0q�6C   $	��Top=�6W   $	��197��6o   $
��Auto��6|      AutoGenerateColumns .  	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$

 Side��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   ��  �� Path$
 side�  5      $
 Time Updated��6%    6;   �� $ 
timeUpdate�  5      $
 Status��6%    65   �� $ tradeStatus�  5      $
 Product Name��6%    6;   �� $ product�  5      $
 Quantity��6%    67   �� $	 qty�  5      $
 Price��6%    64   �� $ price�  5      $

 Firm��6%    63   �� $
 firm�   RowStyle 5      �� 5       �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6    �� Triggers 5       �� 5!       �� Binding 6&   �� *tradeStatus+ �� Value InCompleted6F   .a�5"      ��  �� Property � �� �� Value
 �  ��5#      5$      5'      5*      �� 5+   
   -
   5        $ btnGetNotes��5+      $��Get you notes��6&   $
��Left=�6>   $��232,300,0,0q�6Y   $	��Top=�6n   $��91��6�   6�   �� 5,   
   -   5        $ 	txtSearch��5,      $
��Left=�6%   $��23��6@   $��
173,30,0,0q�6L   $
 Wrap=�6`   $�� ��6t   $	��Top=�6|   $	��120��6�   �� 5-   
   -   5        $ label2��5-      $��Sort by:��6    $
��Left=�63   $��
316,26,0,0q�6N   $	��Top=�6b   $��58��6z   $��24��6�   � 5.   
   $
��Left=�6   $��27��6/   $��
379,26,0,0q�6;   $	��Top=�6O   $	��165��6g   .+�5/      �� -   5         ��Name$ cmbSort��5/      $
��Left=�6(   $	��Top=�6C   $��80��6[   .@�50      �� $��price��6   �� 51      $��timeUpdated��6   �� 52      $��product��6   �� 53      $	��qty��6   55      �� 56      -   5        $ txtQuantity��56      $
��Left=�6+   $��23��6F   $
 Wrap=�6R   $�� ��6f   $	��Top=�6n   $��49��6�   57      �� 58   
   -   5        $ btnSort��58      $
��Sort��6"   $
��Left=�61   $��
544,26,0,0q�6L   $	��Top=�6`   $��75��6x   6�   �� 59   
   -   5        $ 
btnMessage��59      $��Message��6%   $
��Left=�67   $��137,441,0,0q�6R   $	��Top=�6g   $��75��6   6�   �� 5:   
   -   5        $ chkAutoRefresh��5:      $��Auto Refresh��6+   $
��Left=�6B   $��
646,45,0,0q�6]   $	��Top=�6q   �� 5;   
   -   5        $ button1��5;      $��Export��6"   $
��Left=�63   $��656,301,0,0q�6N   $	��Top=�6c   $��75��6{   6�   �� 5<   
   -   5        $ txtExportPath��5<      $
��Left=�6)   $��23��6D   $��530,301,0,0q�6P   $
 Wrap=�6e   $�� ��6y   $	��Top=�6�   $	��121��6�   �� 5=   
   -   5        $ label3��5=      $��Export Path:��6    $
��Left=�67   $��452,300,0,0q�6R   $	��Top=�6g   5?      5@      