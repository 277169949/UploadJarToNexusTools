   M S B A M L   `   `   `  ����P  LUploadJarToNexusTools, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:UploadJarToNexusToolsUploadJarToNexusTools  5   	   &     UploadJarToNexusTools.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:UploadJarToNexusTools     5   	     � Title$  Upload Jar Tools��5   	   $��600.196��6"   $��900.95��63   .��5	      � $��136,3,120.4,33.4q�6   .+�5
   
   �� -   5         ��Name$ button��5
      $��Browser File��6!   $
��Left=�68   $��
462,36,0,0q�6S   $	��Top=�6g   $	��147��6   $��35��6�   6�   �� 5   
   -   5         ��Name$ jar_textbox��5      $
��Left=�6'   $��35��6B   $��	65,36,0,0q�6N    �� TextWrapping$
 Wrap=�6a   $	��Top=�6u   $	��280��6�   �� 5   
   -   5        $ repository_url_textBox��5      $
��Left=�62   $��23��6M   $��
195,95,0,0q�6Y   $
 Wrap=�6m   $	��Top=�6�   $	��414��6�   �� 5   
   -   5         ��Name$ repository_url_label��5      $��Repository Url:��6.   $
��Left=�6H   $��	65,91,0,0q�6c   $	��Top=�6v    J� RenderTransformOrigin$ 0.264,-0.026&�6�   � 5   
   $
��Left=�6   $	��100��6*   $��-94,257,0,-7q�67   $	��Top=�6M   $	��100��6e   �� 5   
   -   5        $ repository_name_lable��5      $��Repository Name:��6/   $
��Left=�6J   $��
65,133,0,0q�6e   $	��Top=�6y   $	��117��6�   �� 5   
   -   5        $ repository_name_textBox��5      $
��Left=�63   $��23��6N   $��195,133,0,0q�6Z   $
 Wrap=�6o   $	��Top=�6�   $	��414��6�   �� 5   
   -   5        $ label��5      $��	DgroupId:��6   $
��Left=�63   $��
65,175,0,0q�6N   $	��Top=�6b   $��94��6z   �� 5   
   -   5        $ DgroupId_textBox1��5      $
��Left=�6-   $��23��6H   $��195,178,0,0q�6T   $
 Wrap=�6i   $	��Top=�6}   $	��414��6�   �� 5   
   -	   5        $ 
label_Copy��5      $��DartifactId:��6$   $
��Left=�6;   $��
65,212,0,0q�6V   $	��Top=�6j   $��94��6�   �� 5   
   -
   5        $ DartifactId_textBox��5      $
��Left=�6/   $��23��6J   $��195,215,0,0q�6V   $
 Wrap=�6k   $	��Top=�6   $	��414��6�   �� 5   
   -   5        $ label_Copy1��5      $��	Dversion:��6%   $
��Left=�69   $��
65,240,0,0q�6T   $	��Top=�6h   $��94��6�   �� 5   
   -   5        $ Dversion_textBox��5      $
��Left=�6,   $��23��6G   $��195,243,0,0q�6S   $
 Wrap=�6h   $	��Top=�6|   $	��414��6�   �� 5   
   -   5        $ upload_commands��5      $
��Left=�6+   $	��120��6F   $��
65,300,0,0q�6S   $
 Wrap=�6g   $	��Top=�6{   $	��544��6�   �� 5   
   -   5        $ refresh_commands��5      $��获取上传命令��6+   $
��Left=�6<   $��195,462,0,0q�6W   $	��Top=�6l   $	��200��6�   $��35��6�   6�   5      5      