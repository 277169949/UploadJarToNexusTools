using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Diagnostics;

namespace UploadJarToNexusTools
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            this.repository_url_textBox.Text=PublicTools.getConfigValue("repositories_url");
            this.repository_name_textBox.Text = PublicTools.getConfigValue("repositories_name");
        }

        private void browserfile_button_Click(object sender, RoutedEventArgs e)
        {
            var openFileDialog = new Microsoft.Win32.OpenFileDialog()
            {
                Filter = "Jar Files (*.jar)|*.jar"
            };
            var result = openFileDialog.ShowDialog();
            if (result == true)
            {
                this.jar_textbox.Text = openFileDialog.FileName;
            }
        }

        private void refresh_commands_Click(object sender, RoutedEventArgs e)
        {
          //  this.upload_commands.Text = commands;
            String commands  = "mvn deploy:deploy-file -DgroupId="+this.DgroupId_textBox1.Text+ "  -DartifactId="+this.DartifactId_textBox.Text+ " -Dversion="+ this.Dversion_textBox.Text+ " -Dpackaging=jar -Dfile="+ this.jar_textbox.Text+ " -Durl="+this.repository_url_textBox.Text+ " -DrepositoryId=" +this.repository_name_textBox.Text;

            this.upload_commands.Text = commands;


        }

        private void upload_button_Click(object sender, RoutedEventArgs e)
        {
            //上文文件
            //
        }
    }
}
