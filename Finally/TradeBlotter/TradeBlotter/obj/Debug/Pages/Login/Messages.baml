   M S B A M L   `   `   `  ����  TradeBlotter'    !TradeBlotter.Pages.Login.Messages   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Z VFirstFloor.ModernUI, Version=1.0.9.0, Culture=neutral, PublicKeyToken=bc9b0c37bf06c6a90mui&http://firstfloorsoftware.com/ModernUI  5      .��5	      �    ContentRoot#��[  6   .+�5   
   �� -   5          ��Name$  	lstGroups��5      $
��Left=�6%   $��
10,29,0,80q�6@   $	��121��6T   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGrid��5      $
��Left=�6%   $	��282��6@   $��
136,29,0,0q�6M   $	��Top=�6a   $	��595��6y      AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ sender��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   ��  �� Path$ sender�  5      $ message��6%    66   �� $ message�5      �� 5   
   -   5         ��Name$ 
txtMessage��5      $
��Left=�6&   $��78��6A   $��136,347,0,0q�6M    �� TextWrapping$
 Wrap=�6b   $�� ��6v   $	��Top=�6~   $	��614��6�   �� 5   
   -   5        	 ��Name$	 btnSendMessage��5      $
��Send��6)   $
��Left=�68   $��656,430,0,0q�6S   $	��Top=�6h   $��75��6�   6�   �� 5   
   -   5        
 ��Name$
 label��5      $��Type your message here:��6   $
��Left=�6A   $��136,316,0,0q�6\   $	��Top=�6q   �� 5   
   -   5        $
 label1��5      $��Groups��6    $
��Left=�61   $��10,3,0,0q�6L   $	��Top=�6^   �� 5   
   -   5        $	 btnSelectGroup��5      $��Select��6)   $
��Left=�6:   $��
10,430,0,0q�6U   $	��Top=�6i   $��76��6�    J� RenderTransformOrigin$ 
0.5,10.886&�6�   �� 5   
   -   5        $	 btnRefreshMessage��5      $��Refresh��6,   $
��Left=�6>   $��	656,5,0,0q�6Y   $	��Top=�6l   $	��120��6�   6�   �� 5   
   -	   5         ��Name$ chkAutoRefresh��5      $��Auto Refresh��6+   $
��Left=�6B   $��	552,8,0,0q�6]   $	��Top=�6p   5#      5$      