   M S B A M L   `   `   `  ����B  >testwpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:testwpftestwpf  5   	       testwpf.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:testwpf     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � .+�5
   
   �� $��
First Name��6   $
��Left=�6%   $��
114,55,0,0q�6@   $	��Top=�6T   �� 5   
   $��	Last Name��6   $
��Left=�6$   $��
114,96,0,0q�6?   $	��Top=�6S   �� 5   
   $	��Age��6   $
��Left=�6   $��116,135,0,0q�69   $	��Top=�6N   �� 5   
   -   5         ��Name$ 
btn_Submit��5      $��Submit��6%   $
��Left=�66   $��148,202,0,0q�6Q   $	��Top=�6f   6~   �� 5   
   -   5         ��Name$ txt_FirstName��5      $
��Left=�6*   $��
205,63,0,0q�6E    �� TextWrapping$
 Wrap=�6Y   $�� ��6m   $	��Top=�6u   $	��120��6�   �� 5   
   -   5        $ txt_LastName��5      $
��Left=�6(   $��205,100,0,0q�6C   $
 Wrap=�6X   $�� ��6l   $	��Top=�6t   $	��120��6�   �� 5   
   -   5        $ txt_Age��5      $
��Left=�6#   $��205,144,0,0q�6>   $
 Wrap=�6S   $�� ��6g   $	��Top=�6o   $	��120��6�   �� 5   
   -   5        $ 	btn_Clear��5      $��Clear��6$   $
��Left=�64   $��265,202,0,0q�6O   $	��Top=�6d    J� RenderTransformOrigin$ -1.23,-0.775&�6|   6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ Datagrid��5      $��416,28,72,212q�6%   5      5      