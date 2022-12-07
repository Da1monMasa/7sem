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
using WpfApp1.Models;

namespace WpfApp1.Pages
{
    /// <summary>
    /// Interaction logic for PredprosmotrHotel.xaml
    /// </summary>
    public partial class PredprosmotrHotel : Page
    {
        Models.GachiToursEntities _context = new Models.GachiToursEntities();
        /// <summary>
        /// Инициализация и использование функции обновление туров
        /// </summary>
        public PredprosmotrHotel()
        {
            InitializeComponent();

            var allTypes = GachiToursEntities.GetContext().Types.ToList();
            allTypes.Insert(0, new Type { Name = "Все типы" });
            ComboType.ItemsSource = allTypes;
            CheckActual.IsChecked = true;
            ComboType.SelectedIndex = 0;

            UpdateTours();
        }
        /// <summary>
        /// Обновление  listveiw туров
        /// </summary>
        private void UpdateTours()
        {
            var currentTours = GachiToursEntities.GetContext().Tours.ToList();
            if (ComboType.SelectedIndex > 0)
            {
                currentTours = currentTours.Where(p => p.Types.Contains(ComboType.SelectedItem as Type)).ToList();
            }
            currentTours = currentTours.Where(p => p.Name.ToLower().Contains(SearchBox.Text.ToLower())).ToList();
            if (CheckActual.IsChecked.Value)
            {
                currentTours = currentTours.Where(p => p.IsActual).ToList();
            }
            LVTours.ItemsSource = currentTours.OrderBy(p => p.TicketCount).ToList();
        }

        /// <summary>
        /// Функция поиска туров по текстовому боксу
        /// </summary>
        private void SearchBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateTours();
        }

        /// <summary>
        /// Поиск по типо отеля
        /// </summary>
        private void ComboType_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateTours();
        }
        /// <summary>
        /// Фильтрация по актуальности
        /// </summary>
        private void CheckActual_Checked(object sender, RoutedEventArgs e)
        {
            UpdateTours();
        }
    }
}
